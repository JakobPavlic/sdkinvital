class SessionsController < ApplicationController
  # user shouldn't have to be logged in before logging in!
  skip_before_filter :current_user
  def create
    auth = request.env["omniauth.auth"]
    user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) || User.create_with_omniauth(auth)
    session[:user_id] = user.id
    redirect_to root_path, :notice => "Prijavljeni!"
  end
  def destroy
    session.delete(:user_id)
    flash[:notice] = "Adios."
    redirect_to root_path
  end
end
