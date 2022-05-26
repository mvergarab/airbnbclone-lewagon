class Experience < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :name, :description, :price, presence: true
  has_one_attached :photo
end
