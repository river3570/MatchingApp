class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]
  
  USER_COUNT = 12
  def index
    @users = User.page(params[:page]).per(USER_COUNT)
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    if @user.update(user_params)
      redirect_to users_path, notice: 'ユーザーが正常に更新されました'
    else
      render :edit, status: :unprocessable_content
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(
      :nickname,
      :age,
      :gender_id,
      :introduction,
      :user_image,
      hobby_ids: []
    )
  end
end
