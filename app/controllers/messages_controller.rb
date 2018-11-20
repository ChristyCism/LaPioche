class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.find(params[:id])
    @message = Message.create(message_params)
  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy
  end

  def index
    @messages = Message.all

    @message = Message.find(params[:id])
  end

  # def show
    # @message = Message.find(params[:id])
  # end

  private
  def message_params
    params.require(:message).permit(:content, :sender, :receiver)
  end

end
