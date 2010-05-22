class AddReferenceToArtwork < ActiveRecord::Migration
  def self.up
    add_column "artworks", "user_id", :integer
  end

  def self.down
    remove_column "artworks", "user_id"
  end
end
