class ChatsController < ApplicationController

  def show
    @chat = Chat.find(params[:id])
    @messages = @chat.messages
    check_sender_or_receiver(@chat)
  end

  def email_box
    @chats = Chat.all
    @chats_user = []

    @chats.each do |chat|
        if chat.sender_id == current_user.id || chat.receiver_id == current_user.id
          @chats_user << chat
        end
    end
    return @chats_user
  end

end
