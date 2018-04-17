class StudentsController < ApplicationController
  def new
  	@student = Student.new
  	
  end

  def create
 	
 	
  
  	@student = Student.create(student_params)
  	redirect_to '/index'
  	
  end
  def edit
  	@student = Student.find(params[:id])
  	@dojos = Dojo.all
  end
  def update
  	p student_params[:id]

  	Student.update(student_params[:id], student_params)

  	redirect_to '/index'
  	
  end

  def destroy
  end

  def show
 
  	@student = Student.find(params[:id])
  	@dojo = Dojo.find(@student.dojo_id)
  	@students = @dojo.students.where.not(id:@student.id)
  end
   private
 	def student_params
  		params.require(:student).permit(:id, :first_name, :last_name, :email, :dojo_id)
  		
  	end
end
