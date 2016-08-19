class ItemsController < ApplicationController
	def index
		@items = Item.all
	end
	def order
		
	end
end
