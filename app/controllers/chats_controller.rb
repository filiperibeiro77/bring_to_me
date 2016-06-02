class ChatsController < ApplicationController

  def show
    @chat = Chat.find(params[:id])
    puts "teste"
    puts params[:id]
    puts "teste"
    @messages = @chat.messages
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
