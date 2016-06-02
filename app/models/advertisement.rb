class Advertisement < ActiveRecord::Base
  has_many :categories
  belongs_to :traveler
end
