class MessagesController < ApplicationController
	def index
		@this_user = User.find(session[:id])
		@all_messages = Message.all
	end

	def create
		new_message = Message.create(message_params)
		
	    return redirect_to messages_path if new_message.valid?

    	# Otherwise there were errors
    	flash[:errors] = new_message.errors.full_messages
    	return redirect_to messages_path
	end

	private
		def message_params
			params.require(:message).permit(:content, :user_id)
		end
end
