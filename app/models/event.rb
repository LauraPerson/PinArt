class Event < ApplicationRecord
  belongs_to :user
  has_one :event_artwork

  CATEGORIES = ["Festival", "Musée", "Galerie", "Exposition en extérieur"]

end
