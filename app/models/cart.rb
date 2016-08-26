class Cart < ActiveRecord::Base
	has_many :ordered_items
	def add_product(product_args)
		# format = product_id
    current_item = ordered_items.find_by(product_id: product_args[:item_id])
    image = Image.find(product_args[:item_id])
    product_args = product_args.merge(price: image.price,product_id: image.id, cart_id: self.id)
    product_args.delete :authenticity_token
    product_args.delete :controller
    product_args.delete :action
    product_args.delete :item_id    
    if current_item
      current_item.quantity += product_args[:quantity].to_i
      current_item.save
    else
    	product_args.permit!
      current_item = ordered_items.build(product_args)
    end
      current_item
  end
end
