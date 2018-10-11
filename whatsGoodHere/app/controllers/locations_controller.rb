class LocationsController < ApplicationController
  #specs
  before_action :set_location, only: [:edit, :update, :destroy]
 
  def create
    
    if !current_profile
      flash[:error_message] = "You don't have access"
    else
        @location = Location.new(location_detail: location_params[:location_detail], profile_id: current_profile.id)
      if @location.save
        respond_to :js
      else
        @location.errors
      end
    end
  end

  def edit
    respond_to :js
  end

  def update
     if  @location.update(location_param)
      respond_to :js
    else
      @location.errors
    end
  end

  def destroy
    @location.destroy
    respond_to :js
  end

  private

  def set_location
    @location = Location.find(params[:id])
  end

  def location_param
    params.require(:location).permit(:location_detail)
  end

  def location_params
    params.permit(:location_detail, :profile_id)
  end
end
