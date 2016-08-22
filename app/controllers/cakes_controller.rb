class CakesController < ApplicationController
	def index
		@cakes = Image.where(attachable_type: 1)
	end
	def show
		@item = Image.find(params[:id])
	end
end
