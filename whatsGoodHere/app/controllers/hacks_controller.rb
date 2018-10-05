class HacksController < ApplicationController
#tips
before_action :set_hack, only: [:update, :destroy]

  def create
    if !current_profile
      flash[:error_message] = "You don't have access"
    else
      @hack = Hack.new(hack_detail: hack_params[:hack_detail], profile_id: current_profile.id)
      if @hack.save
        redirect_to profile_path(@hack.profile_id)
      else
        @hack.errors
      end
    end
  end

  def update
    if @hack.update(hack_params)
      redirect_to profiles(@hack.profile_id)
    else 
      @hack.errors
    end
  end

  def destroy
    @hack.destroy
    redirect_to profile_path(@hack.profile_id)
  end

  private

  def set_hack
    @hack = Hack.find(params[:id])
  end

  def hack_params
    params.permit(:hack_detail, :profile_id)
  end

end
