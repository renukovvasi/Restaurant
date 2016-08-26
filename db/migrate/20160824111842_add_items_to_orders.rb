class AddItemsToOrders < ActiveRecord::Migration
 	def up
    add_column :orders, :items, :hstore
  end

  def down
    remove_column :orders, :items
  end
end
