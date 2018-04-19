class StudentsController < ApplicationController
  def new
    @dojo = Dojo.find(params[:dojo_id])
    render "new"
  end

  def create
    @student = Student.create( new_student )
    if @student.valid?
      redirect_to "/dojos/#{params[:dojo_id]}"
    elsif
      flash[:errors] = @student.errors.full_messages
      redirect_to "/dojos/#{params[:dojo_id]}/students/new"
    end
  end

  def show
    @student = Student.find(params[:id])
    @dojo = Dojo.find(@student.dojo_id)
    @sorted_students = @dojo.students.where.not(id: @student.id)
    render "show"
  end

  def edit
    @student = Student.find(params[:id])
    @dojo = Dojo.find(@student.dojo_id)
    render "edit"
  end

  def update
    @student = Student.update(params[:id], new_student)
    if @student.valid?
      redirect_to "/dojos/#{@student.dojo_id}"
    elsif
      flash[:errors] = @student.errors.full_messages
      redirect_to "/dojos/#{@student.dojo_id}/students/#{@student.id}/edit"
    end
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    redirect_to "/dojos/#{@student.dojo_id}"
  end

  private
    def new_student
      params.require(:student).permit(:first_name, :last_name, :email, :dojo_id)
    end
end
