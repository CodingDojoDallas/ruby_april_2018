class EventsController < ApplicationController

    before_action :is_user, only: [:edit, :update, :destroy]

    def index
        @events = Event.all
    end

    def show
        @event = Event.find_by(id: params[:id])
        @comments = @event.comments.all
    end
    
    def create
        @event = Event.create(event_params)
        if @event.valid?
            return redirect_to events_path
        end
        messages = []
        @event.errors.full_messages.each { |message| messages << message }
        flash[:errors] = messages
        redirect_to :back
    end

    def edit
        @event = Event.find_by(id: params[:id])
    end

    def update
        @event = Event.find_by(id: params[:id])
        @event.update(event_params)
        if @event.valid?
            return redirect_to events_path
        end
        messages = []
        @event.errors.full_messages.each { |message| messages << message }
        flash[:errors] = messages
        redirect_to :back
    end

    def destroy
        @event = Event.find_by(id: params[:id])
        @event.destroy
        redirect_to :back
    end

    private
        def event_params
            params.require(:event).permit(:name, :date, :city, :state).merge(user_id: current_user.id)
        end

        def is_user
            @event = Event.find_by(id: params[:id])
            @correct_user = @event.user.id
            unless session[:user_id] == @correct_user
            redirect_to :action => 'index'
        end
    
    end

end
