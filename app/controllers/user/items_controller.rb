class User::ItemsController < ApplicationController
	def index
		@items = Item.all

	end

	def show
		@items = Item.all

		@disc = Disc.find(item: paramas[:id])
		@song = Song.find(disc: paramas[:id])
	end

	private
	  def item_params
	  	params.require(:item).permit(:title, :id)
	  end
end
