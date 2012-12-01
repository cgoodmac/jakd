class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :auth
  private
  def auth
     if session[:id]
        @auth = User.find(session[:id])
     else
        @auth = nil
        # redirect_to login_path
     end
  end
end
