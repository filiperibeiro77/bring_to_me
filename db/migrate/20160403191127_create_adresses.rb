class CreateAdresses < ActiveRecord::Migration
  def change
    create_table :adresses do |t|
      t.string :public_place
      t.integer :adress_number
      t.string :neighborhood
      t.string :adress_city
      t.string :adress_cep
      t.string :adress_complement
      t.string :adress_state
      t.references :user

      t.timestamps null: false
    end
  end
end
