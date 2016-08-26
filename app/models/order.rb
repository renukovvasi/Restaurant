class Order < ActiveRecord::Base
	store_accessor :items, :item_type, :item_id
	belongs_to :user
end
