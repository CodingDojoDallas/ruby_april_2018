class EventsController < ApplicationController
	def index
		# renders events index page
		@events_here = Event.eager_load(:user, :users_joined, comments: :user).where(state: current_user.state)
		@other_events = Event.eager_load(:user, :users_joined, comments: :user).where.not(state: current_user.state)
	end

	def create
		@event = Event.create(event_params)
		if @event.valid?
			return redirect_to events_path
		end

		flash[:errors] = @event.errors.full_messages
		return redirect_to events_path
	end

	def show
		# render event show page
		# gives me access to the user who created, all users_joined and comments + user info
		event = Event.eager_load(:user, :users_joined, comments: :user).where(id: params[:id])
		@this_event = event[0]

		# @event_info = Event.find_by(id: params[:id])
		# @attendees = @event_info.users_joined
		# @comments = @event_info.comments
		# p @this_event, "ALL INFO FOR THIS EVENT"
		# p @this_event.users_joined, "ALL USERS JOINED THIS EVENT"
		# p @event_info, "THIS IS BASIC SEARCH EVENT"
	end

	# not required for this assignment
	def edit
		# render text: "You wish you could change this event."
		@this_event = Event.find_by(id: params[:id])
	end

	# not required for this assignment
	def update
		@this_event = Event.find_by(id: params[:id], user_id: session[:id])
		# if a record returned
		if @this_event
			@this_event.update(event_params)
			if @this_event.valid?
				return redirect_to events_path #show page
			end
			# else data was not valid
			flash[:errors] = @this_event.errors.full_messages
			return redirect_to edit_event_path(@this_event.id)
		end
		# else no record returned
		flash[:errors] = @this_event.errors.full_messages
		return redirect_to edit_event_path(@this_event.id)
	end

	def destroy
		@this_event = Event.find_by(id: params[:id])
		if current_user == @this_event.user
			@this_event.destroy
			return redirect_to events_path
		end
		# else
		flash[:errors] = ["That is not your event to destroy."]
		return redirect_to edit_event_path(@this_event.id)
	end

	private
		def event_params
			params.require(:event).permit(:name, :date, :city, :state, :user_id)
		end
end