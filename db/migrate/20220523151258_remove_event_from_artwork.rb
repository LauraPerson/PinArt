class RemoveEventFromArtwork < ActiveRecord::Migration[7.0]
  def change
    remove_reference :artworks, :event, null: false, foreign_key: true
  end
end
