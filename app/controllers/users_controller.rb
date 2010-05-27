class UsersController < ApplicationController
  layout "master"
  before_filter :check_authentication, :except => [:login, :logout, :profile]

  def login
    session[:user] = nil
    if request.post?
      user = User.authenticate(params[:username], params[:password]).id
      if user
        session[:user] = user
        uri = session[:original_url]
        session[:original_url] = nil
        redirect_to(uri || {:controller => "browse", :action => "index"})
      else
        flash.now[:notice] = "Invalid user/password combination"
      end
    end
  end

  def logout
    session[:user] = nil
    redirect_to :controller => "browse", :action => "index"
  end

  def profile
    unless params[:id].nil?
      if User.exists?(params[:id])
        @user = User.find(params[:id])
        @artwork = @user.artwork.find(:all, :order => "created_at DESC").paginate :page => params[:page], :per_page => 8
      else
        flash[:notice] = "Invalid User Profile"
        redirect_to :controller => "browse", :action => "index"
      end
    end
  end
end
