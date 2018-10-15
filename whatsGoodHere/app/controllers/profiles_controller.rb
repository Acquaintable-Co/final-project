class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update, :delete]
  def index
  end

  def show
  end
  
  def nearby

       #@nearby = Profile.near(request.remote_ip, 0.5)
       @nearby = Profile.near([location.latitude, location.longitude], 2.8)
       #@nearby = Profile.near([35.993124, -78.905147], 0.5)

  end

  def browse
    if params[:restaurant].present?
      @browse = Profile.search_by_restaurant(params[:restaurant])  
    else
      @browse = Profile.order('restaurant asc')
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
    if @profile.update(profile_param)
      redirect_to @profile
      flash[:notice] = "Images Updated"
    end
  end

  def destroy
  end

  private

  def set_profile
    @profile = Profile.find(params[:id])
  end
  def profile_param
  params.fetch(:profile, {}).permit(:menu, :vr_image, :floor_plan, :special)
  end
  def profile_params
    params.require(:profile).permit(:email, :password, :address, :hours, :phone, :website, :restaurant, :name, :menu, :vr_image, :floor_plan, :special)
  end
end
