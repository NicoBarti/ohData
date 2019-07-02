class ItemsController < ApplicationController

  def create
     @user = User.find(params[:user_id])
     @item = @user.items.create(item_params)
     redirect_to user_path(@user)
   end

   private
     def item_params
       params.require(:item).permit(:itemid, :alt, :tiempo, :secuencia)
     end

end
