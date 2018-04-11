class StudentsController < ApplicationController

	def show
		# will automatically go into views/users and look for 'show' file to render
		@this_student = Student.find(params[:student_id])
		@this_dojo = Dojo.find(params[:dojo_id])
		@these_students = @this_dojo.students.where.not(id: params[:student_id])
	end

	def new
		@this_dojo = Dojo.find(params[:dojo_id])
	end

	def edit
		# will automatically go into views/users and look for 'edit' file to render
		@this_student = Student.find(params[:student_id])
		@this_dojo = Dojo.find(params[:dojo_id])
		@all_dojos = Dojo.where.not(id: @this_dojo.id)
	end

	def create
    # form submission, add 1 to session and create user, then direct to results page
    	new_student = Student.create(student_params)
	    # flash[:success] = "Thanks for adding a new student!"
	    if new_student.valid?
	    	return redirect_to "/dojos/#{params[:dojo_id]}" 
	    end 
    	
    	# Otherwise there were errors
    	flash[:errors] = new_student.errors.full_messages
    	return redirect_to :back
    	# EASY WAY TO REDIRECT BACK TO THE PAGE THEY WERE ON && flash is built in so just give it the key
    	# THIS IS NOT WORKING... REDIRECTS BUT DOES NOT OUTPUT ERRORS
    	# return redirect_to :back, errors: new_student.errors.full_messages
	end

	def update
		update_student = Student.update(params[:student_id], student_params)
		# p update_student
		
		# flash[:success] = "Thanks for updating student!"
		if update_student.valid?
			return redirect_to "/dojos/#{params[:dojo_id]}/students/#{params[:student_id]}" 
		end
		
		# p update_student.errors.full_messages
    	flash[:errors] = update_student.errors.full_messages
		redirect_to :back
		# EASY WAY TO REDIRECT BACK TO THE PAGE THEY WERE ON
		# THIS IS NOT WORKING... REDIRECTS BUT DOES NOT OUTPUT ERRORS
    	# return redirect_to :back, errors: update_student.errors.full_messages
	end

	def delete
		Student.find(params[:student_id]).destroy
		redirect_to "/dojos/#{params[:dojo_id]}"
	end

	private
	# aka WhiteListing/Strong Params
	# this is allowing access to call student_params -- and works since we are naming these keys in our HTML
		def student_params
			params.require(:student).permit(:first_name, :last_name, :email, :dojo_id)
		end
end
