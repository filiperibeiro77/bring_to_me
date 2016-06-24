class Chat < ActiveRecord::Base
  has_many :messages
  belongs_to :advertisement

  def self.get_istance(message , advertisement_id, receiver_id, chat_id, current_user)
    if message.chat_id == nil
      chat = Chat.new
      chat.advertisement_id = advertisement_id
      chat.receiver_id = receiver_id
      chat.sender_id = current_user.id
      chat.save
      message.chat_id = chat.id
    else
      message.chat_id = chat_id
    end
  end

end
