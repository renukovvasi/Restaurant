module AddItemsToTotalList
	extend ActiveSupport::Concern
	include do
		attr_reader :name, :description, :attachable_type, :price
		before_save :create_object
	end

	def create_total_list
		item_type = Item.where(attachable_type: params[:attachable_type]).first.name
	end

	def create_object
		binding.pry
		if params[:attachable_type] == 1
			@item = Cake.create(name: params[:name], description: params[:description],price: params[:price])
		elsif params[:attachable_type] == 2
			@item = Choclate.create(name: params[:name], description: params[:description],price: params[:price])
		elsif params[:attachable_type] == 3
			@item = Cookie.create(name: params[:name], description: params[:description],price: params[:price])
		end			
		@item
	end
end