# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  before_filter :check_authorization, :check_authentication
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

  def check_authorization
    user = User.find(session[:user])
    unless user.roles.detect{|role|
      role.rights.detect{|right|
        right.action == action_name && right.controller == controller_name
        }
      }
      flash[:notice] = "You are not authorized to view the page you requested"
      request.env["HTTP_REFERER"] ? (redirect_to :back) : (redirect_to :controller => "browse", :action => "hot")
      return false
    end
  end

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
end
