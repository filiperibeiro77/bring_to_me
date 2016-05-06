class CreateAdvertisements < ActiveRecord::Migration
  def change
    create_table :advertisements do |t|
      t.string :description
      t.date :travel_date
      t.string :destiny
      t.string :type_itens
      t.belongs_to :traveler

      t.timestamps null: false
    end
  end
end
