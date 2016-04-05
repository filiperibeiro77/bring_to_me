class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :user_email
      t.string :user_home_phone
      t.string :user_cel_phone
      t.references :user

      t.timestamps null: false
    end
  end
end
