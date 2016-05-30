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

  def message_params
     params.require(:message).permit(:description , :receiver_id)
   end

end
