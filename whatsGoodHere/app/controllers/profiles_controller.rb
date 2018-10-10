class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update, :delete]
  def index
  end

  def show
  end
  
  def nearby
       @nearby = Profile.near(request.location.ip, 0.5)
      #  @nearby = Profile.near([location.latitude, location.longitude], 0.5)
  end

  def browse
    if params[:restaurant].present?
      @browse = Profile.search_by_restaurant(params[:restaurant])
    else
      @browse = Profile.all
    end
  end

  def create
    @profile = Profile.new(profile_params)
    if @profile.save
      render @profile
    else
      @profile.errors
    end
  end

  def edit
  end

  def update
    @profile.update(profile_params)
    redirect_to @profile
  end

  def destroy
  end

  private

  def set_profile
    @profile = Profile.find(params[:id])
  end

  def profile_params
    params.require(:profile).permit(:email, :password, :address, :hours, :phone, :website, :restaurant, :name, :menu, :vr_image, :floor_plan)
  end
end
