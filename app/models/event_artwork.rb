class EventArtwork < ApplicationRecord
  belongs_to :artwork
  belongs_to :event
end
