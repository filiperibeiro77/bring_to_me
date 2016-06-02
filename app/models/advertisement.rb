class Advertisement < ActiveRecord::Base
  belongs_to :traveler
  has_many :chats
end
