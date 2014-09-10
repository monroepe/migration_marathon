class Book < ActiveRecord::Base
  validates :title, :author, presence: true
  validates :rating, inclusion: { in: 0..100 }
end
