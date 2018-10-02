class LocationsController < ApplicationController

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def create
  end

  private

  def location_params
    params.require(:location).permit(:location_detail, :profile_id)
  end


end
