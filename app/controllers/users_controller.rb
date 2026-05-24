class UsersController < ApplicationController
  USER_COUNT = 12
  def index
    @users = User.page(params[:page]).per(USER_COUNT)
  end
end
