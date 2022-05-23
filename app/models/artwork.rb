class Artwork < ApplicationRecord
  belongs_to :user
  has_one :event_artwork
  has_one :tag_artwork

  has_one :event, through: :event_artwork
  has_many :tags,  through: :tag_artwork


  CATEGORIES = ["Photographie", "Peinture", "Dessin", "Sculpture", "Collage"]

end
