class BrowseController < ApplicationController
  before_filter :check_authentication, :except => [:show, :index, :signin_from, :signin]

  def check_authentication
    unless session[:user]
      session[:intended_action] = action_name
      flash[:notice] = "Please signin"
      redirect_to :action => "index"
    end
  end

  def signin
    session[:user] = User.authenticate(params[:username], params[:password]).id
    #redirect_to :action => session[:intended_action]
    redirect_to :action => "index"
  end

  def signout
    session[:user] = nil
    redirect_to :action => :index
  end

  def index
    @artworks = Artwork.find_new_artwork.paginate :page => params[:page], :per_page => 8, :order => 'created_at DESC'
  end
end
