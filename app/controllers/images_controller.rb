class ImagesController < ApplicationController

	def new
		@image = Image.new
	end

	def create
		@image = Image.create(image_params)
		redirect_to @image
	end

	def show
		@image = Image.find(params[:id])
	end

	def edit
	end

	def destroy
	end

	def image_params
		params[:image].permit(:name,:description,:image,:attachable_type)
	end
end
