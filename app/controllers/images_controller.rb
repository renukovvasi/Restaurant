class ImagesController < ApplicationController
	include AddItemsToTotalList
	def new
		@image = Image.new
	end

	def create
		@image = Image.create(image_params)
		if image_params[:attachable_type].to_i == 1
			@item = Cake.create(name: image_params[:name], description: image_params[:description],price: image_params[:price])
		elsif image_params[:attachable_type].to_i == 2
			@item = Choclate.create(name: image_params[:name], description: image_params[:description],price: image_params[:price])
		elsif image_params[:attachable_type].to_i == 3
			@item = Cookie.create(name: image_params[:name], description: image_params[:description],price: image_params[:price])
		end
		TotalList.create(item_id: @item.id, item_type: @item.class.name)
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
