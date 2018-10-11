class HacksController < ApplicationController
  #tips
  before_action :set_hack, only: [:edit, :update, :destroy]
  
    def create
      if !current_profile
        flash[:error_message] = "You don't have access"
      else
        @hack = Hack.new(hack_detail: hack_params[:hack_detail], profile_id: current_profile.id)
        if @hack.save
          respond_to :js
        else
          @hack.errors
        end
      end
    end

    def edit
      respond_to :js
    end
  
    def update
      if @hack.update(hack_param)
        respond_to :js
      else 
        @hack.errors
      end
    end
  
    def destroy
      @hack.destroy
      respond_to :js
    end
  
    private
  
    def set_hack
      @hack = Hack.find(params[:id])
    end

    def hack_param
      params.require(:hack).permit(:hack_detail)
    end
  
    def hack_params
      params.permit(:hack_detail, :profile_id)
    end
  
  end
  