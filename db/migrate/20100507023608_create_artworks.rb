class CreateArtworks < ActiveRecord::Migration
  def self.up
    create_table :artworks, :options => "engine=InnoDB default charset=utf8" do |t|
    
      t.string :title, :default => 'Untitled Artwork'
      t.string :image_url, :default => '/images/default.jpg'
      t.text :description
      t.datetime :upload_date
      t.boolean :for_sale, :default => false
      t.boolean :nsfw, :default => false
      t.decimal :price, :precision => 8, :scale => 2, :default => 0
      t.integer :quantity, :null
      t.integer :votes, :default => 0

      t.timestamps
    end
  end

  def self.down
    drop_table :artworks
  end
end
