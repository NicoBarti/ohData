class ListsController < ApplicationController

  protect_from_forgery :except => [:create]

    def create
       @user = User.find(params[:user_id])
       @list = @user.lists.create(list_params)

       if  @list.save
           render json: @list, status: :created
         else
           render json: @list.errors, status: :created
       end



     end

     private
       def list_params
         params.require(:list).permit(:nombre, :eq, :cant, :indx)
       end

end
