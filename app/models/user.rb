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


  	def rate(qualification, traveler_id)

	  	traveler = Traveler.find(traveler_id)
	  	  	
	  	if traveler.qualification == nil
	  		traveler.qualification = qualification.to_f
	  	else
	  		traveler.qualification = ((traveler.qualification + qualification.to_f) / 2.0).round(2)
	  	end
	  	traveler.password = '123456'
	  	traveler.save

	end

end
