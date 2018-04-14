class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def current_user
  	# find the user with the id == to the session[:id] if there is a value in session[:id]
  	User.find(session[:id]) if session[:id]
  	# could also say: User.find_by(id: session[:id]) if sessionkey? 'id'
  end

  helper_method :current_user # this gives the whole app access to this method defined above
end
