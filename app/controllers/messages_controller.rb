class MessagesController < ApplicationController

  def new
    @message = Message.new
    @@receiver_id = params[:receiver_id]
  end

  def create
    @message = Message.new(message_params)
    @message.user_id = current_user.id
    @message.receiver_id = @@receiver_id

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
