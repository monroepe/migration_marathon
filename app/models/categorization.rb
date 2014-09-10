class Categorization < ActiveRecord::Base
  belongs_to :category
  belongs_to :book
  validates :category_id, :book_id, presence: true
end
