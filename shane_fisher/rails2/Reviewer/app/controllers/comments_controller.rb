class CommentsController < ApplicationController
    def create
        Comment.create(user_id: current_user.id, event_id: params[:event_id], content: params[:comment])
        redirect_to :back
    end
end
