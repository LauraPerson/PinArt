class RenameTypeToCategory < ActiveRecord::Migration[7.0]
  def change
    rename_column :artworks, :type, :category
  end
end
