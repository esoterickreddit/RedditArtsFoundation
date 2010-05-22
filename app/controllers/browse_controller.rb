class BrowseController < ApplicationController
  layout "master"
  before_filter :check_authentication, :except => [:show, :index, :signin_from, :signin, :hot, :new]

  def new
    @artworks = Artwork.find_new_artwork.paginate :page => params[:page], :per_page => 8
  end

  def index
    redirect_to :action => "new"
  end

  def hot
    @artworks = Artwork.find_hot_artwork.paginate :page => params[:page], :per_page => 8
  end
end
