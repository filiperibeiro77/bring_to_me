class AddMessageReadToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :message_read, :boolean
  end
end
