class UsersController < ApplicationController

  def index
     @users = User.all
   end

  def show
      @user = User.find(params[:id])
    end

  def new
  end

  def create
    @user = User.new(user_params)
    if  @user.save
        render json: @user, status: :created, location: @user
      else
        render json: @user.errors, status: :created
    end
  end

private
  def user_params
    params.require(:user).permit(:sexo, :fnac, :userid)
  end

end
