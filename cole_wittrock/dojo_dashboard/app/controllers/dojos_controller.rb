class DojosController < ApplicationController
  def index
  	@dojos = Dojo.all
  end
  def new
  	@dojo = Dojo.new
  end
  def create
  	@new = Dojo.create(dojo_params)
  	redirect_to '/index'

  	
  end
  def edit
  	@dojo = Dojo.find(params[:id])
  end
  def destroy
    @dojo = Dojo.find(params[:id])
    @dojo.delete
    redirect_to '/index'
    
  end
  def show
    @dojo = Dojo.find(params[:id])
    

    @students = Student.all.where(dojo:@dojo)
    
  end
  def update

  	@update = Dojo.update(dojo_params[:id], dojo_params)
  	redirect_to '/index'
  end
  private
 	def dojo_params
  		params.require(:dojo).permit(:id, :branch, :street, :city, :state)
  		
  	end
end
