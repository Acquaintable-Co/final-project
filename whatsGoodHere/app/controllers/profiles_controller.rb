class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update, :delete]
  def new
  end

  def show
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
  end

  def delete
  end

  private

  def set_profile
    @profile = Profile.find(params[:id])
  end

  def profile_params
    params.require(:profile).permit(:email, :password, :address, :hours, :phone, :website, :restaurant, :name)
  end
end
