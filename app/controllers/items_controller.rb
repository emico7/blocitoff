class ItemsController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @item = @user.items.new(item_params)
    @new_item = Item.new

    if @item.save
      flash[:notice] = "Item was saved successfully."
    else
      flash.now[:alert] = "There was an error saving the item. Please try again."
    end

    respond_to do |format|
       format.html
       format.js
     end
  end

  private

  def item_params
    params.require(:item).permit(:name)
  end
end
