class EventVenue < ApplicationRecord
  has_many :events

  validates :name, :address, presence:true
  validates :capacity, numericality:{only_integer:true, greater_tha_or_equal_to: 10}
end
