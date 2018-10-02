class HighlightsController < ApplicationController

 
  def create
    @highlight = Highlight.new(highlight_params)
    if @highlight.save
      redirect_to profiles(@highlight.profile_id)
    else
      @highlight.errors
    end
  end

  def update
    if @highlight.update(highlight_params)
      redirect_to profiles(@highlight.profile_id)
    else 
      @highlight.errors
  end

  def destroy
    @highlight.destroy
  end

  private

  def set_highlight
    @highlight = Highlight.find(params[:id])
  end

  def highlight_params
    params.require(:highlight).permit(:highlight_detail, :profile_id)
  end

end
