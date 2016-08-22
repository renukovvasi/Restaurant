class ImagesController < ApplicationController

	def new
		@image = Image.new
	end

	def create
		@image = Image.create(image_params)
		params[:image].delete :attachable_type
		params[:image].delete :image
		if @image.item_type.name == Cake.name
			@cake = Cake.create(image_params)
		elsif @image.item_type.name == Choclate.class
			@choc = Choclate.create(image_params)
	  elsif @image.item_type.name == Choclate.class
	  	@cook = Cookie.create(image_params)
	  end	
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
		params[:image].permit(:name,:description,:image,:attachable_type,:price)
	end
end
