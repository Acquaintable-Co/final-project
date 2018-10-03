class LocationsController < ApplicationController
  before_action :set_location, only: [:update, :destroy]
 
  def create
    
    @location = Location.new(location_params)
    if @location.save
      redirect_to profiles(@location.profile_id)
    else
      @location.errors
    end
  end

  def update
   if  @location.update(location_params)
    redirect_to @profile(@profile_id)
   else
    @location.errors
   end
  end

  def destroy
    @location.destroy
  end

  private

  def set_location
    @location = Location.find(params[:id])
  end

  def location_params
    params.require(:location).permit(:location_detail, :profile_id)
  end
end
