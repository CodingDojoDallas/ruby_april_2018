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
    	if new_dojo.valid?
	        flash[:success] = "Thanks for adding a new dojo!"
	        return redirect_to '/dojos'
    	end

    	# Otherwise there were errors
    	flash[:errors] = new_dojo.errors.full_messages
    	return redirect_to '/dojos/new'
	end

	def show
		# will automatically go into views/users and look for 'show' file to render
		@this_dojo = Dojo.find(params[:id])
	end

	def edit
		# will automatically go into views/users and look for 'edit' file to render
		@this_dojo = Dojo.find(params[:id])
	end

	def update
		Dojo.update(params[:id], dojo_params)
		redirect_to '/dojos'
	end

	def delete
		Dojo.find(params[:id]).destroy
		redirect_to '/dojos'
	end

	private
	# this is allowing access to call dojo_params -- and works since we are naming these keys in our HTML
		def dojo_params
			params.require(:dojo).permit(:branch, :street, :city, :state)
		end

end
