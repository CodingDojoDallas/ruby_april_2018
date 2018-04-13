class DojosController < ApplicationController
  def index
    @dojos = Dojo.all
    render "index"
  end

  def new
    render "new"
  end

  def create
    @dojo = Dojo.create( new_dojo )
    if @dojo.valid?
      redirect_to "/dojos"
    elsif @dojo.errors
      flash[:errors] = @dojo.errors.full_messages
      redirect_to "/dojos/new"
    end
  end

  def show
    @dojo = Dojo.find(params[:id])
    render "show"
  end

  def edit
    @dojo = Dojo.find(params[:id])
    render "edit"
  end

  def update
    @dojo = Dojo.update(params[:id], new_dojo )
    if @dojo.valid?
      redirect_to "/dojos"
    elsif @dojo.errors
      flash[:errors] = @dojo.errors.full_messages
      redirect_to "/dojos/#{@dojo.id}/edit"
    end
  end

  def destroy
    @dojo = Dojo.find(params[:id])
    @dojo.destroy
    redirect_to "/dojos"
  end

  private
    def new_dojo
      params.require(:dojo).permit(:branch, :street, :city, :state)
    end
end
