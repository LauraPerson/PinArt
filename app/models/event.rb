class Event < ApplicationRecord
  belongs_to :user

  CATEGORIES = ["Festival", "Musée", "Galerie", "Exposition en extérieur"]

end
