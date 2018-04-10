class DojosController < ApplicationController
	
	def main
		render text: "Welcome to the Dojo Page!"
	end

	def index
		# will automatically go into views/users and look for 'index' file to render
		@all_dojos = Dojo.all
		@count = Dojo.count
	end

	def new
		# will automatically go into views/users and look for 'new' file to render
	end

	def create
    # form submission, add 1 to session and create user, then direct to results page
    	new_dojo = Dojo.create(dojo_params)
    	# if successful
	    # flash[:success] = "Thanks for adding a new dojo!"
	    return redirect_to "/dojos" if new_dojo.valid?
	    # much longer way of saying the same thing
    	# if new_dojo.valid?
	    #     # flash[:success] = "Thanks for adding a new dojo!"
	    #     return redirect_to '/dojos'
    	# end

    	# Otherwise there were errors
    	flash[:errors] = new_dojo.errors.full_messages
    	return redirect_to "/dojos/new"
    	# EASY WAY TO REDIRECT BACK TO THE PAGE THEY WERE ON && flash is built in so just give it the key
    	# THIS IS NOT WORKING... REDIRECTS BUT DOES NOT OUTPUT ERRORS
    	# return redirect_to :back, errors: new_dojo.errors.full_messages
	end

	def show
		# will automatically go into views/users and look for 'show' file to render
		@this_dojo = Dojo.find(params[:id])
		@all_students = Student.where(dojo: params[:id])
		p @all_students
	end

	def edit
		# will automatically go into views/users and look for 'edit' file to render
		@this_dojo = Dojo.find(params[:id])
	end

	def update
		update_dojo = Dojo.update(params[:id], dojo_params)
		# successful
		# return redirect_to '/dojos' if update_dojo.valid?
		# much longer way of saying the same thing
		if update_dojo.valid?
			flash[:success] = "Thanks for updating dojo!"
			return redirect_to "/dojos"
		end

		# Otherwise there were errors
		flash[:errors] = update_dojo.errors.full_messages
		redirect_to :back
    	# EASY WAY TO REDIRECT BACK TO THE PAGE THEY WERE ON && flash is built in so just give it the key
		# THIS IS NOT WORKING... REDIRECTS BUT DOES NOT OUTPUT ERRORS
		# redirect_to :back, errors: update_dojo.errors.full_messages
	end

	def delete
		Dojo.find(params[:id]).destroy
		redirect_to "/dojos"
	end

	private
	# this is allowing access to call dojo_params -- and works since we are naming these keys in our HTML
		def dojo_params
			params.require(:dojo).permit(:branch, :street, :city, :state)
		end

end
