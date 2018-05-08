# == Schema Information
#
# Table name: users
#
#  id         :bigint(8)        not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  username   :string           not null
#

class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true

  has_many :artworks,
  primary_key: :id,
  foreign_key: :artist_id,
  class_name: :Artwork,
  dependent: :destroy

  has_many :watched_artwork,
  primary_key: :id,
  foreign_key: :viewer_id,
  class_name: :ArtworkShare

  has_many :shared_viewers,
  through: :watched_artwork,
  source: :viewer

  has_many :artwork_shares,
  through: :watched_artwork,
  source: :artwork,
  dependent: :destroy

end
