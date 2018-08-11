class Admin::ItemsController < ApplicationController
	def index
		render 'admin/home'
	end

	def new
		@item = Item.new
		@item.discs.build
		@item.songs.build
	end

	def create
		@item = Item.new(item_params)
		@item.save
		redirect_to items_path
	end



end