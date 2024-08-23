class Song < ApplicationRecord
  validates :title, presence: true
  validates :artist, presence: true
  validates :release_year, presence: true
  validates :album, presence: true
  # validates :available, default: true
  validates :price, presence: true
  belongs_to :user
  has_many :bookings

  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search_by_title_album_arist,
  against: [ :title, :album, :artist ],
  using: {
    tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }

end
