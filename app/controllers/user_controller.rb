class UserController < ApplicationController
  def signin
    session[:user] = User.authenticate(params[:username], params[:password]).id
    redirect_to :action => "index", :controller => "browse"
    #redirect_to :action => "index"
  end

  def signout
    session[:user] = nil
    redirect_to :action => "index", :controller => "browse"
  end
end
