class BrowseController < ApplicationController
  layout "master"
  skip_before_filter :check_authorization, :check_authentication
  before_filter :check_authentication,
                :check_authorization,
                :except => [:new, :index, :hot, :search]

  def new
    @artworks = Artwork.find_new_artwork.paginate :page => params[:page], :per_page => 8
  end

  def index
    redirect_to :action => "hot"
  end

  def hot
    @artworks = Artwork.find_hot_artwork.paginate :page => params[:page], :per_page => 8
  end

  def search
    @artworks = Artwork.search params[:search]
  end
end
