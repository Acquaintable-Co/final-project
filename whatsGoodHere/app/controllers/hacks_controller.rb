class HacksController < ApplicationController

  def create
    @hack = Hack.new(hack_params)
    if @hack.save
      redirect_to profiles(@hack.profile_id)
    else
      @hack.errors
    end
  end

  def update
    if @hack.update(hack_params)
      redirect_to profiles(@hack.profile_id)
    else 
      @hack.errors
  end

  def destroy
    @hack.destroy
  end

  private

  def set_hack
    @hack = Hack.find(params[:id])
  end

  def hack_params
    params.require(:hack).permit(:hack_detail, :profile_id)
  end

end
