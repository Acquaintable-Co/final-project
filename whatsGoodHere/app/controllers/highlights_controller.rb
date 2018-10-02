class HighlightsController < ApplicationController

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def highlight_params
    params.require(:highlight).permit(:highlight_detail, :profile_id)
  end

end
