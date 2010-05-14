class AddTestData < ActiveRecord::Migration
  def self.up
    Artwork.delete_all
    
    Artwork.create  :title => 'Dora',
                    :image_url => '/images/dora.png',
                    :description => %{<p>Dora from <a href="http://questionablecontent.net/">questionablecontent.net</a></p>},
                    :for_sale => false,
                    :nsfw => false,
                    :price => 0.00,
                    :quantity => 1,
                    :votes => 0
      
      
    Artwork.create  :title => 'Faye',
                    :image_url => '/images/faye.jpg',
                    :description => %{<p>Faye from <a href="http://questionablecontent.net/">questionablecontent.net</a></p>},
                    :for_sale => false,
                    :nsfw => false,
                    :price => 0.00,
                    :quantity => 1,
                    :votes => 0
      
      
    Artwork.create  :title => 'Hanners',
                    :image_url => '/images/hanners.png',
                    :description => %{<p>Hanners from <a href="http://questionablecontent.net/">questionablecontent.net</a></p>},
                    :for_sale => false,
                    :nsfw => false,
                    :price => 0.00,
                    :quantity => 1,
                    :votes => 0
      
      
    Artwork.create  :title => 'Martin',
                    :image_url => '/images/martin.jpg',
                    :description => %{<p>Martin from <a href="http://questionablecontent.net/">questionablecontent.net</a></p>},
                    :for_sale => false,
                    :nsfw => false,
                    :price => 0.00,
                    :quantity => 1,
                    :votes => 0
      
      
    Artwork.create  :title => 'Penelope',
                    :image_url => '/images/pen.jpg',
                    :description => %{<p>Penelope from <a href="http://questionablecontent.net/">questionablecontent.net</a></p>},
                    :for_sale => false,
                    :nsfw => false,
                    :price => 0.00,
                    :quantity => 1,
                    :votes => 0
      
      
    Artwork.create  :title => 'Raven',
                    :image_url => '/images/raven.jpg',
                    :description => %{<p>Raven from <a href="http://questionablecontent.net/">questionablecontent.net</a></p>},
                    :for_sale => false,
                    :nsfw => false,
                    :price => 0.00,
                    :quantity => 1,
                    :votes => 0
      
      
    Artwork.create  :title => 'Cyanide',
                    :image_url => '/images/cyanide.png',
                    :description => %{<p>Shot from Cyanide and Happiness</p>},
                    :for_sale => true,
                    :nsfw => true,
                    :price => 100.00,
                    :quantity => 1,
                    :votes => 0
      
      
    Artwork.create  :title => 'XKCD',
                    :image_url => '/images/xkcd.png',
                    :description => %{<p>Shot from XKCD</p>},
                    :for_sale => true,
                    :nsfw => false,
                    :price => 314.59,
                    :quantity => 1,
                    :votes => 0

    Artwork.create  :title => 'Ethan',
                    :image_url => '/images/ethan.png',
                    :description => %{<p>Ethan from CAD</p>},
                    :for_sale => true,
                    :nsfw => false,
                    :price => 34.59,
                    :quantity => 1,
                    :votes => 0

    Artwork.create  :title => 'Lucas',
                    :image_url => '/images/lucas.png',
                    :description => %{<p>Lucas from CAD</p>},
                    :for_sale => true,
                    :nsfw => false,
                    :price => 14.99,
                    :quantity => 1,
                    :votes => 0

    Artwork.create  :title => 'Lilah',
                    :image_url => '/images/lilah.png',
                    :description => %{<p>Lilah from CAD</p>},
                    :for_sale => true,
                    :nsfw => false,
                    :price => 3.22,
                    :quantity => 1,
                    :votes => 0

    
  end

  def self.down
    Artwork.delete_all
  end
end
