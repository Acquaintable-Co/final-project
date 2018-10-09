class ApplicationController < ActionController::Base
  helper_method :current_profile


  def lookup_ip_location
    if Rails.env.development?
      Geocoder.search(request.location)
    else
      request.location
    end
  end

  protected
    def current_profile
      @current_profile ||= Profile.find(session[:profile_id]) if session[:profile_id]
    end
end
