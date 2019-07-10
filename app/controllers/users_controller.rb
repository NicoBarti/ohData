class UsersController < ApplicationController

 protect_from_forgery :except => [:create]

http_basic_authenticate_with name: "Audit", password: "borrar123", only: :destroy


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

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to "/users"
  end

private
  def user_params
    params.require(:user).permit(:sexo, :fnac, :userid)
  end

end
