class ItemsController < ApplicationController

protect_from_forgery :except => [:create]

  def create
     @user = User.find(params[:user_id])
     @item = @user.items.create(item_params)

     if  @item.save
         render json: @item, status: :created
       else
         render json: @item.errors, status: :created
     end



   end

   private
     def item_params
       params.require(:item).permit(:itemid, :alt, :tiempo, :secuencia)
     end

end
