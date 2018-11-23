class MessagesController < ApplicationController

  def index
    @sender = current_user
    @user2 = User.find(params[:user_id])
    @messages = Message.where(@sender && @receiver)

    sql = <<-SQL
      (sender_id = :user1 && receiver_id = :user2)
      OR (sender_id = :user2 && receiver_id = :user1)
    SQL
    Message.where(sql, user1: current_user.id, user2: @user2.id)


    end

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
