class Artwork < ActiveRecord::Base
  validates_presence_of :title, :image_url, :description
  validates_format_of  :image_url,
                       :with => %r{\.(gif|jpg|png)$}i,
                       :message => 'URL must be a PNG, GIF or JPG image.'

  def self.search(search)
    search_condition = '%' + search + '%'
    find(:all, :conditions => ['title Like ? OR description LIKE ?', search_condition, search_condition])
  end
  
  def self.find_new_artwork
    find(:all, :order => "created_at")
  end
end
