class OffersController < ApplicationController
  #fare
  before_action :set_offer, only: [:edit, :update, :destroy]
  

  def create
   
    if !current_profile
      flash[:error_message] = "You don't have access"
    else
    @offer = Offer.new(offer_detail: offer_params[:offer_detail], profile_id: current_profile.id)
      if @offer.save
        respond_to :js
        # redirect_to profile_path(@offer.profile_id)
      else
        @offer.errors
      end
    end
  end

  def edit
  respond_to :js
  end


  def update
    @offer.update(offer_param)
      respond_to :js
    
  end

  def destroy
    @offer.destroy
    respond_to :js
  end

  private

  def set_offer
    @offer = Offer.find(params[:id])
  
  end

  def offer_param
    params.require(:offer).permit(:offer_detail)
  end

  def offer_params
    params.permit(:offer_detail)
  end

end
