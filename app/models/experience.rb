class Experience < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  validates :name, :description, :price, presence: true
  has_one_attached :photo
end
