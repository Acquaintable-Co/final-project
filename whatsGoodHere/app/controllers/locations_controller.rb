class LocationsController < ApplicationController
  #specs
  before_action :set_location, only: [:update, :destroy]
 
  def create
    
    if !current_profile
      flash[:error_message] = "You don't have access"
    else
        @location = Location.new(location_detail: location_params[:location_detail], profile_id: current_profile.id)
      if @location.save
        redirect_to profile_path(@location.profile_id)
      else
        @location.errors
      end
    end
  end

  def update
     if  @location.update(location_params)
      redirect_to profile_path(@location.profile_id)
    else
      @location.errors
    end
  end

  def destroy
    @location.destroy
    redirect_to profile_path(@location.profile_id)
  end

  private

  def set_location
    @location = Location.find(params[:id])
  end

  def location_params
    params.permit(:location_detail, :profile_id)
  end
end
