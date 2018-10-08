class OffersController < ApplicationController
  #fare
  before_action :set_offer, only: [:update, :destroy]
  

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

  def update
    @offer.update(offer_params)
  end

  def destroy
    @offer.destroy
    redirect_to profile_path(@offer.profile_id)
  end

  private

  def set_offer
    @offer = Offer.find(params[:id])
  
  end

  def offer_params
    params.permit(:offer_detail)
  end

end
