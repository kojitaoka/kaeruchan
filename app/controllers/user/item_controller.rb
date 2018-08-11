class User::ItemController < ApplicationController
def index
	@items =item.all
    @item_new =item.new
    @user = current_user
end

def show
	@item = item.find(params[:id])
    @item_new =item.new
    @user = @item.user

private
  def item_params
  	params.require(:item).permit(:title, :user_id)
  end
