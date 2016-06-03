class Advertisement < ActiveRecord::Base
  has_one :category
  belongs_to :traveler
end
