class User < ActiveRecord::Base
	has_many :adress
	has_one :contact
	has_secure_password

	validates :user_name, presence: true, length: {maximum: 50}
	validates :password, presence: true, length: {minimum: 6}
	validates :user_cpf, presence: true, length: {minimum: 11}
	validates :user_sex, presence: true

end