class AddScoreToArtwork < ActiveRecord::Migration
  def self.up
    add_column "artworks", "score", :float
  end

  def self.down
    remove_column "artworks", "score"
  end
end
