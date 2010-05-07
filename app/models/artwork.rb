class Artwork < ActiveRecord::Base
  validates_presence_of :title, :image_url, :description
  validates_format_of  :image_url,
                       :with => %r{\.(gif|jpg|png)$}i,
                       :message => 'URL must be a PNG, GIF or JPG image.'

  
end
