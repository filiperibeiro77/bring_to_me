class Contact < ActiveRecord::Base
	belongs_to :user

	VALID_USER_EMAIL_FORMAT= /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
	validates :user_email, presence: true, length: {maximum: 260}, format: { with: VALID_USER_EMAIL_FORMAT}, uniqueness: {case_sensitive: false}
	before_save { self.user_email = user_email.downcase }

 	validates :user_cel_phone, presence: true
end
