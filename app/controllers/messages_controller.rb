class MessagesController < ApplicationController
  def index
    @user1 = current_user
    @user2 = User.find(params[:user_id])

    @messages = Message.between(@user1, @user2)
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    @user = User.find(params[:message][:receiver_id].to_i)

    if @message.save
      redirect_to user_conversation_path(@user)
    else
      p @message
    end
  end

  private

  def message_params
    params.require(:message).permit(:body, :sender_id, :receiver_id)
  end
end
