class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    #@item = @user.items.visible_to(current_user)
  end
end
