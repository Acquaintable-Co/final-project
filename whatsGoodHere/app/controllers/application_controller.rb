class ApplicationController < ActionController::Base
  helper_method :current_profile


  def location
    if params[:location].blank?
      if Rails.env.test? || Rails.env.development?
        @location ||= Geocoder.search([35.993124, -78.905147]).first
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

    def after_sign_in_path_for(resource_or_scope)
      stored_location_for(resource_or_scope) || request.referrer
    end
    
    def after_sign_out_path_for(resource_or_scope)
      stored_location_for(resource_or_scope) || request.referrer
    end
    

end

# 106 Ellerbee IP 24.163.60.146

# Momentum IP 50.111.7.147