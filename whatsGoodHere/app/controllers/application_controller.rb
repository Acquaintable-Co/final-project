class ApplicationController < ActionController::Base
  helper_method :current_profile


  def location
    if params[:location].blank?
      if Rails.env.test? || Rails.env.development?
        @location ||= Geocoder.search("50.111.7.147").first
      else
        @location ||= request.location
      end
    else
      params[:location].each {|l| l = l.to_i } if params[:location].is_a? Array
      @location ||= Geocoder.search(params[:location]).first
      @location
    end
  end

  protected
    def current_profile
      @current_profile ||= Profile.find(session[:profile_id]) if session[:profile_id]
    end
end
