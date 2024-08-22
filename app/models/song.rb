class Song < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :artist, presence: true
  validates :release_year, presence: true
  validates :album, presence: true
  # validates :available, default: true
  validates :price, presence: true
  belongs_to :user
  has_many :bookings

  has_one_attached :photo
end
