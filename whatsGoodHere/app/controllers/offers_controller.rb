class OffersController < ApplicationController

  def new
  end

  def create
    @offer = Offer.new(offer_params)
    if @offer.save
      redirect profiles(@offer.profile_id)
    else
      @offer.errors
    end
  end

  def edit
  end

  def update
  end

  def create
  end

  private

  def offer_params
    params.require(:offer).permit(:offer_detail, :profile_id)
  end

end
