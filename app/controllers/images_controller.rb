class ImagesController < ApplicationController

  def new
    @user = User.find(params[:user_id])
    @image = @user.images.new
  end

  def create
    @user = User.find(params[:user_id])
    @image = @user.images.new(image_params)
    if @image.save
      redirect_to user_path(@image.user)
    else
      render :new
    end
  end

  private
  def image_params
    params.require(:image).permit(:title, :description, :photo)
  end
end
