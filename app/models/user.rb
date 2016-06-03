class User < ActiveRecord::Base
	has_one :adress , dependent: :destroy
	has_one :contact , dependent: :destroy
	has_many :messages
	has_secure_password
	accepts_nested_attributes_for :adress
 	accepts_nested_attributes_for :contact

	validates :user_name, presence: true, length: {maximum: 50}
	validates :password, presence: true, length: {minimum: 6}
	validates :user_cpf, presence: true, length: {minimum: 11}
	validates :user_sex, presence: true

end
