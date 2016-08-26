class AddOrderStatusToOrderedItems < ActiveRecord::Migration
  def change
  	add_column :ordered_items, :ordere_status, :integer
  end
end
