class User::ItemsController < ApplicationController
	def index
		@items = Item.all
		# @disc = Disc.find_by(item: params[:item])
		# @song = Song.find_by(disc: params[:disc])
	end

	private
	  def item_params
	  	params.require(:item).permit(:title, :id)
	  end
end
