class Advertisement < ActiveRecord::Base
  has_one :category
  belongs_to :traveler
  has_many :chats
end
