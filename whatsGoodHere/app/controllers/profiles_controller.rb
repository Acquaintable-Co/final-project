class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update, :delete]
  def new
  end

  def show
  end

  def browse
    puts 'browse action**********************'
    if params[:restaurant]
      @browse = Profile.where('restaurant LIKE ?', "%#{params[:restaurant]}%")
      redirect_to browse_path
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

  def delete
  end

  private

  def set_profile
    @profile = Profile.find(params[:id])
  end

  def profile_params
    params.permit(:email, :password, :address, :hours, :phone, :website, :restaurant, :name, :menu, :vr_image, :floor_plan)
  end
end
