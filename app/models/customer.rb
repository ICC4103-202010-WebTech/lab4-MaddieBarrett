class Customer < ApplicationRecord
  has_many :orders
  has_many :tickets, through: :orders

  validates :email, confirmation:true
  validates :email_confirmation, presence:true
  validates :email, uniqueness:true
  validates :name, lastname, presence:true
end
