class UsersController < ApplicationController
  def index
    @users = User.where("role = 'instructor'")
  end
  def show
    @user = User.find(params[:id])
  end
end
