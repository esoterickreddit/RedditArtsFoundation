# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

private
  def check_authentication
    unless session[:user]
      session[:original_uri] = request.request_uri
      flash[:notice] = "Please signin"
      redirect_to :action => "index", :controller => "browse"
    end
  end

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
end
