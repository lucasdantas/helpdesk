class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :authenticated?
 
  def authenticated?
    if session[:user_id] != nil
      true
    else
      redirect_to new_session_path
    end
  end
end
