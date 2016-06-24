module ChatHelper

  def check_sender_or_receiver (chat)
    if current_user.id == chat.sender_id
      @user = User.find(chat.receiver_id)
    elsif current_user.id == chat.receiver_id
      @user = User.find(chat.sender_id)
    end
  end
  
  def set_msg_read_true(message)
    if current_user.id == message.receiver_id
      message.message_read = true
      message.save
    end
  end

  def count_new_messages
    @number_of_new_messages = 0

    @chats = Chat.all

    @chats.each do |chat|
      @messages = chat.messages
      @messages.each do |message|
        if message.receiver_id == current_user.id && message.message_read == false
          @number_of_new_messages = @number_of_new_messages + 1
        end
      end
    end
    return @number_of_new_messages
  end
end
