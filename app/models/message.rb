class Message < ActiveRecord::Base
  belongs_to :user
  belongs_to :chat
  after_save :message_confirmation


  def message_confirmation
  end
  
end
