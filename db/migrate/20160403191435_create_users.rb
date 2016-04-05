class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :password
      t.string :user_cpf
      t.string :user_sex
      t.date :user_date_of_birth

      t.timestamps null: false
    end
  end
end
