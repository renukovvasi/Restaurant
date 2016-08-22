class ChoclatesController < ApplicationController
	def index
	end
	def show
		@item = Image.find(params[:id])
	end
end
