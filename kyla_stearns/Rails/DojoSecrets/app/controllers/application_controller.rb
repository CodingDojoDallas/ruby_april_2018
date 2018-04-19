class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :require_login

  def current_user
  	# find the user with the id == to the session[:id] if there is a value in session[:id]
  	User.find_by(id: session[:id]) if session[:id]
  	# could also say: User.find_by(id: session[:id]) if sessionkey? 'id'
  end

  helper_method :current_user # this gives the whole app access to this method defined above

  private
  	def require_login
  		unless logged_in?
  			flash[:errors] = ["You must be logged in."]
  			redirect_to new_session_path
  		end
  	end

  	# The logged_in? method simply returns true if the user is logged
    # in and false otherwise. It does this by "booleanizing" the
    # current_user method we created previously using a double ! operator.
    # Note that this is not common in Ruby and is discouraged unless you
    # really mean to convert something into true or false.
  	def logged_in?
  		!!current_user
  	end
end
