class MessagesController < ApplicationController

  def new
    @message = Message.new
    @@receiver_id = params[:receiver_id]
    @@chat_id = params[:chat_id]
    @@advertisement_id = params[:advertisement_id]
  end

  def create
    @message = Message.new(message_params)
    @message.user_id = current_user.id
    @message.receiver_id = @@receiver_id
    @message.chat_id = @@chat_id

    if @message.chat_id == nil
      @chat = Chat.new
      @chat.advertisement_id = @@advertisement_id
      @chat.receiver_id = @@receiver_id
      @chat.sender_id = current_user.id
      @chat.save
      @message.chat_id = @chat.id
    end

      if @message.save
        redirect_to root_path
      else
        render 'new'
      end
  end

  def list_messages
    @list = Message.all
    @vector_list = []

    @list.each do |message|
      if message.receiver_id == current_user.id
        @vector_list << message
      end
    end

    return @vector_list.sort { |a,b| b.created_at <=> a.created_at }
  end

  def message_params
     params.require(:message).permit(:description , :receiver_id)
   end

end
