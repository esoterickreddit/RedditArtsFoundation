class UsersController < ApplicationController
  layout "master"

  def signin
    session[:user] = User.authenticate(params[:username], params[:password]).id
    redirect_to :action => "index", :controller => "browse"
    #redirect_to :action => "index"
  end

  def signout
    session[:user] = nil
    redirect_to :action => "index", :controller => "browse"
  end

  def profile
    if params[:id].nil?
      @user = User.find(session[:user])
    elsif session[:user].nil?
      @user = User.find(params[:id])
    else
      redirect_to :action => "index", :controller => "browse"
    end
    @artworks = @user.artwork.find(:all, :order => "created_at DESC").paginate :page => params[:page], :per_page => 8
  end
end
