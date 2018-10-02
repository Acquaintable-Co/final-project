class HacksController < ApplicationController

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

  def hack_params
    params.require(:hack).permit(:hack_detail, :profile_id)
  end

end
