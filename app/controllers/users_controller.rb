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
    @user = User.new(params.require(:user).permit(:sexo, :fnac, :userid))

    @user.save
    redirect_to @user
  end

private
  def user_params
    params.require(:user).permit(:sexo, :fnac, :userid)
  end

end
