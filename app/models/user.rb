class User < ActiveRecord::Base
	has_one :adress
	has_one :contact
end