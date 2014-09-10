class Reader < ActiveRecord::Base
  has_many :checkouts, dependent: :destroy
  validates :full_name, :email, :phone_number, presence: true
end
