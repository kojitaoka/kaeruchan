class Admin::ItemsController < ApplicationController
	def index
		render 'admin/home'
	end

	def new
		@item = Item.new
		@item.discs.build
		@item.songs.build
	end



end