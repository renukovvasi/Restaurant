class Image < ActiveRecord::Base
	mount_uploader :image, ImageUploader


	belongs_to :item, :class_name => 'Item',foreign_key: :attachable_type
	belongs_to :user, :class_name => 'User',foreign_key: :user_id
end
