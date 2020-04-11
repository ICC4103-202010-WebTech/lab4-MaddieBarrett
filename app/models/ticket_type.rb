class TicketType < ApplicationRecord
  belongs_to :event

  validates :price, numericality:{greater_than_or_equal_to:0}
end
