class StudentsController < ApplicationController
	@@count = 0
  def index
  	@student = Student.find(session[:id])
  	return render 'students/index'
  end
  def new

  	return render 'students/create'
  	
  end
  def create
  	@student = Student.create(student_params)
  	session[:count] = @@count +=1
  	p session[:id] = @student.id
  	return redirect_to '/index'
  end
  private
  	def student_params
  		params.require(:student).permit(:name, :dojo, :language, :comment)
  		
  	end
end
