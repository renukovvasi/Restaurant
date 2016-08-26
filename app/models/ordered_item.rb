class OrderedItem < ActiveRecord::Base
	belongs_to :user
	#attr_accessible :cart_id, :price, :quantity
end
