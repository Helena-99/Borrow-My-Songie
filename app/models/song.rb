class Song < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :release_year, presence: true
  validates :album, presence: true
  # validates :available, default: true
  validates :price, presence: true
end
