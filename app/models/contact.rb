class Contact < ActiveRecord::Base
	belongs_to :user
	validates :user_email, presence: true
 	validates :user_cel_phone, presence: true
end
