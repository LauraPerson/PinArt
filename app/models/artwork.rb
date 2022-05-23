class Artwork < ApplicationRecord
  belongs_to :event
  belongs_to :user

  CATEGORIES = ["Photographie", "Peinture", "Dessin", "Sculpture", "Collage"]

end
