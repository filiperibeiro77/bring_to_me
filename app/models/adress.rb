class Adress < ActiveRecord::Base
	belongs_to :user

	validates :public_place, presence: true
 	validates :adress_cep, presence: true
 	validates :neighborhood, presence: true
 	validates :adress_city, presence: true
 	validates :adress_state, presence: true
end