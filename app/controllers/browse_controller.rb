class BrowseController < ApplicationController
  def index
    @artworks = Artwork.find_new_artwork.paginate :page => params[:page], :per_page => 8, :order => 'created_at DESC'
  end
end
