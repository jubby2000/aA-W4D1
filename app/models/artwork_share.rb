# == Schema Information
#
# Table name: artwork_shares
#
#  id         :bigint(8)        not null, primary key
#  artwork_id :integer
#  viewer_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ArtworkShare < ApplicationRecord
  # validates [:artwork_id, :viewer_id], uniqueness: true
  validates :artwork_id, uniqueness: {scope: :viewer_id}

  belongs_to :viewer,
  primary_key: :id,
  foreign_key: :viewer_id,
  class_name: :User

  belongs_to :artwork,
  primary_key: :id,
  foreign_key: :artwork_id,
  class_name: :Artwork
end
