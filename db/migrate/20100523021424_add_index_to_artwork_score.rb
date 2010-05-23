class AddIndexToArtworkScore < ActiveRecord::Migration
  def self.up
    add_index "artworks", "score"
  end

  def self.down
    remove_index "artworks", "score"
  end
end
