class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :description
      t.integer :receiver_id
      t.belongs_to :user
      t.belongs_to :chat

      t.timestamps null: false
    end
  end
end
