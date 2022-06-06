class EventArtwork < ApplicationRecord
  belongs_to :artwork, optional: true
  belongs_to :event, optional: true
end
