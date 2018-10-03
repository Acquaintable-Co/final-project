class ApplicationController < ActionController::Base
  helper_method :current_profile

  protected
    def current_profile
      @current_profile ||= Profile.find(session[:profile_id]) if session[:profile_id]
    end
end
