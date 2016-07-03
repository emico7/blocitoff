class ItemsController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @item = @user.items.build(item_params)

    if @item.save
      flash[:notice] = "Item was saved successfully."
      redirect_to[@user]
    else
      flash.now[:alert] = "There was an error saving the item. Please try again."
      redirect_to[@user]
    end
  end

  private

  def item_params
    params.require(:item).permit(:name)
  end
end
