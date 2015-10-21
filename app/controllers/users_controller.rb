class UsersController < ApplicationController
  # before_filter { :index, :show }

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @images = @user.images
  end

  private
    def user_params
      params.require(:user).permit(:email, :password)
    end
end
