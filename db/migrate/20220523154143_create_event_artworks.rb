class CreateEventArtworks < ActiveRecord::Migration[7.0]
  def change
    create_table :event_artworks do |t|
      t.references :artwork, null: false, foreign_key: true
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
