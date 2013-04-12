class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :current_user
  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = "Zavrnjen dostop"
    redirect_to root_url
  end
  protected # prevents method from being invoked by a route
  def current_user
    # we exploit the fact that find_by_id(nil) returns nil
    @current_user ||= User.find_by_uid(session[:user_id])
  end 
end
