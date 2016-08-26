class AddCartIdToOrderedItems < ActiveRecord::Migration
  def change
  	add_column :ordered_items, :item_id, :integer, default: 0
  end
end
