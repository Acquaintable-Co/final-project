class SessionsController < ApplicationController


  def new
  end

  def create
    profile = Profile.find_by(email: params[:session][:email])
    if profile && profile.authenticate(params[:session][:password])
      session[:profile_id] = profile.id
      # Log the profiler in and redirect to the profile's show page.
      redirect_to profile
    else
      # Create an error message.
      render 'new'
    end
  end

  def destroy
    session[:profile_id] = nil
    flash[:notice] = "You've been logged out"
    redirect_to root_path
  end

end