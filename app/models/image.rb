class Image < ActiveRecord::Base
	mount_uploader :image, ImageUploader


	belongs_to :item_type, :class_name => 'Item',foreign_key: :attachable_type
	belongs_to :user, :class_name => 'User',foreign_key: :user_id

	def item
		if self.attachable_type == 1
			Cake.where(name: self.name).first
		elsif self.attachable_type == 2
			Choclate.where(name: self.name).first
		elsif 
			Cookie.where(name: self.name).first		
		end
	end
end
