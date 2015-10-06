class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  private
  
  #confirm user is logged in, if not redirects loging/register form
  def confirm_logged_in
    unless session[:user_id]
      redirect_to(:controller => "access", :action => "access")
      return false
    else
      return true
    end
  end
end
