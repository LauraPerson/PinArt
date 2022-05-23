class CreateTagArtworks < ActiveRecord::Migration[7.0]
  def change
    create_table :tag_artworks do |t|
      t.references :artwork, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
