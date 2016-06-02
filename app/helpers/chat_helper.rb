module ChatHelper

  def check_sender_or_receiver (chat)
    if current_user.id == chat.sender_id
      @user = User.find(chat.receiver_id)
    elsif current_user.id == chat.receiver_id
      @user = User.find(chat.sender_id)
    end
  end

  def find_ad(ad_id)
    @ad = Advertisement.find(ad_id)
  end
end
