class SessionsController < ApplicationController
  def create
    user = User.from_omniauth(request.env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to user_path(current_user)
  end

  def destroy
    session[:user_id] = nil
    redirect_to "https://accounts.google.com/Logout?continue=http://google.com"
    reset_session
  end
end