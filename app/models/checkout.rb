class Checkout < ActiveRecord::Base
  belongs_to :book
  belongs_to :reader
  validates :reader_id, :book_id, presence: true
end
