class MessageObserver < ActiveRecord::Observer

  def after_create(message)
    message.logger.info('Nova Mensagem')
    message.message_read = false
    message.save
  end

end
