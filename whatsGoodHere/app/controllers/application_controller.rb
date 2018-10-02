class ApplicationController < ActionController::Base
  helper_method :current_user

  protected
    def current_user
      @current_user ||= Profile.find(session[:profile_id]) if session[:profile_id]
    end
end
