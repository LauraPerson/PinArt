class Artwork < ApplicationRecord

  attr_accessor :event_id
  
  belongs_to :user
  has_one :event_artwork
  acts_as_taggable_on :tags
  
  has_one :event, through: :event_artwork
  accepts_nested_attributes_for :event, allow_destroy: true


  CATEGORIES = ["Photographie", "Peinture", "Dessin", "Sculpture", "Collage"]

end
