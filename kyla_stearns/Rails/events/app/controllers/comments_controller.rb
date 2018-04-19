class CommentsController < ApplicationController

	def create
		@comment = Comment.create(content: params[:comment][:content], event_id: params[:event_id], user_id: session[:id])
		if @comment.valid?
			return redirect_to event_path(params[:event_id])
		end

		flash[:errors] = @comment.errors.full_messages
		return redirect_to event_path(params[:event_id])
	end

	# not required for this assignment
	# def destroy
	# end

end