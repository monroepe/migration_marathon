class Checkout < ActiveRecord::Base
  belongs_to :book
  validates :customer, :book_id, presence: true
end
