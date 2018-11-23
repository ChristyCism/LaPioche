class MessagesController < ApplicationController

  def index
    @user1 = current_user
    @user2 = User.find(params[:user_id])

    @messages = Message.between(@user1, @user2)
    @message = Message.new
  end

  def create
    @message = @conversation.messages.new(message_params)
    if @message.save
      redirect_to conversation_messages_path(@conversation)
    end
  end

  private

  def message_params
    params.require(:message).permit(:body, :user_id)
  end
end
