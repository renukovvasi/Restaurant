class CartsController < ApplicationController
	include CurrentCart
	def show
		@cart = Cart.find(params[:id])
	end

	def index
	end

end
