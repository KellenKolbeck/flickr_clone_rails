class UsersController < ApplicationController
  before_filter { :index, :show }

  private
    def user_params
      params.require(:user).permit(:email, :password)
    end
end
