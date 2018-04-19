class UsersController < ApplicationController
    layout "two_column", only: [:index]
    skip_before_action :require_login, only: [:new, :create, :index]
    before_action :is_user, only: [:edit, :update]

    def index
        
    end
    def create
        @user = User.create(user_params)
        if @user.valid?
            return redirect_to events_path
        end
        messages = []
        @user.errors.full_messages.each { |message| messages << message }
        flash[:errors] = messages
        redirect_to :back
    end

    def edit

    end

    def update
        @user = current_user
        @user.update(user_params)
        if @user.valid?
            return redirect_to events_path
        end
        messages = []
        @user.errors.full_messages.each { |message| messages << message }
        flash[:errors] = messages
        redirect_to :back
    end

    private
        def user_params
            params.require(:user).permit(:first_name, :last_name, :email, :city, :state, :password, :password_confirmation)
        end

        def is_user
            unless session[:user_id] == params[:id].to_i
            redirect_to :action => 'show', :id => session[:user_id]
        end
    
    end
    
        
end
    
