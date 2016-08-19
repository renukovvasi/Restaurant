class CakesController < ApplicationController
	def index
	end
	def show
		@cake = Image.find(params[:id])
	end
end
