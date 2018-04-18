class SignupsController < ApplicationController
    def create
        @event = Event.find_by id: params[:id]
        @event.joiners << current_user
        redirect_to :back
    end
    def destroy
        @event = Event.find_by id: params[:id]
        @event.joiners.delete(current_user)
        redirect_to :back
    end
end
