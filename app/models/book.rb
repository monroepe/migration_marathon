class Book < ActiveRecord::Base
  has_many :checkouts
  has_many :categorizations
  has_many :categories, through: :categorizations
  validates :title, :author, presence: true
  validates :rating, inclusion: { in: 0..100 }
end
