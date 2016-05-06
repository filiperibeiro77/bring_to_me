class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :password_digest
      t.string :user_cpf
      t.string :user_sex
      t.date :user_date_of_birth
      t.integer :number_of_sales
      t.integer :service_note
      t.string :type
      t.timestamps null: false
    end
  end
end
