class Admin::ItemController < ApplicationController
	def index
		render 'admin/home'
	end

	def new
		@item = Item.new
		@item.discs.build
		@item.songs.build
	end

	def create
		item = Item.new(item_params)
		item.save
	end

	private

		def item_params
			params.require(:item).permit()

end