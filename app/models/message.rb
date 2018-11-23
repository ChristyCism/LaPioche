class Message < ApplicationRecord
  belongs_to :sender, class_name: 'User', foreign_key: 'sender_id'
  belongs_to :receiver, class_name: 'User', foreign_key: 'receiver_id'

  validates_presence_of :body

  def self.between(user1, user2)
    Message.where(sender: user1, receiver: user2)
           .or(Message.where(sender: user2, receiver: user1))
  end

  private

  def message_time
    created_at.strftime("%d/%m/%y at %l:%M %p")
  end
end

