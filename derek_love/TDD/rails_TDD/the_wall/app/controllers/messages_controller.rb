class MessagesController < ApplicationController
  def index
    @user = User.find(session[:user])
    @messages = Message.all.joins(:user)
    render "index"
  end

  def create
    @message = Message.create( new_message )
    if @message.valid?
      redirect_to messages_path
    else
      flash[:errors] = @message.errors.full_messages
      redirect_to messages_path
    end
  end

  private
    def new_message
      params.require(:message).permit(:content, :user_id)
    end
end
