class SessionsController < ApplicationController


  def new
  end

  def create
    profile = Profile.find_by(email: params[:session][:email])
    if profile && profile.authenticate(params[:session][:password])
      # Log the profiler in and redirect to the profile's show page.
    else
      # Create an error message.
      render 'new'
    end
  end

  def destroy
  end

end