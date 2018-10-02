class OffersController < ApplicationController
  before_action :set_offer, only: [:update, :destroy]
  

  def create
    @offer = Offer.new(offer_detail: offer_detail, profile_id: params[:id])
    if @offer.save
      redirect profiles(@offer.profile_id)
    else
      @offer.errors
    end
  end

 

  def update
    @offer.update(offer_params)
  end

  def destroy
    @offer.destroy
  end

  private

  def set_offer
    @offer = Offer.find(params[:id])
  end

  def offer_params
    params.require(:offer).permit(:offer_detail)
  end

end
