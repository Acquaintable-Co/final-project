class HighlightsController < ApplicationController
  before_action :set_highlight, only: [:update, :destroy]
 
  def create
    if !current_profile
      flash[:error_message] = "You don't have access"
    else
      @highlight = Highlight.new(highlight_detail: highlight_params[:highlight_detail], profile_id: current_profile.id)
      if @highlight.save
        redirect_to profile_path(@highlight.profile_id)
      else
        @highlight.errors
      end
    end
  end

  def update
    if @highlight.update(highlight_params)
      redirect_to profile_path(@highlight.profile_id)
    else 
      @highlight.errors
    end
  end

  def destroy
    @highlight.destroy
  end

  private

  def set_highlight
    @highlight = Highlight.find(params[:id])
  end

  def highlight_params
    params.permit(:highlight_detail, :profile_id)
  end

end
