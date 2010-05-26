class UsersController < ApplicationController
  layout "master"

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
    if params[:id].nil?
      @user = User.find(session[:user])
    elsif session[:user].nil?
      @user = User.find(params[:id])
    else
      redirect_to :action => "index", :controller => "browse"
    end
    @artwork = @user.artwork.find(:all, :order => "created_at DESC").paginate :page => params[:page], :per_page => 8
  end
end
