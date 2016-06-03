class CreateChats < ActiveRecord::Migration
  def change
    create_table :chats do |t|
      t.belongs_to :advertisement
      t.integer :sender_id
      t.integer :receiver_id

      t.timestamps null: false
    end
  end
end
