class JoinsController < ApplicationController

	def create
		# p params, "JOIN CREATE WITH PARAMS"
		p session[:id]
		@join_event = Join.create(event_id: params[:event_id], user_id: session[:id])
		if @join_event.valid?
			return redirect_to events_path
		end

		flash[:errors] = @join_event.errors.full_messages
		return redirect_to events_path
	end

	def destroy
		@this_join = Join.find_by(event_id: params[:event_id], user_id: session[:id])
		# p @this_join.user_id, "THIS JOIN'S USER"
		# p params[:id].to_i, "JOIN DELETE WITH PARAMS USER ID"
		# p session[:id], "CURRENT SESSION ID"
		if @this_join # if a record was found
			@this_join.destroy
			redirect_to events_path
		else
			flash[:errors] = ["You cannot remove another user's attendance"]
			redirect_to events_path
		end
	end

end