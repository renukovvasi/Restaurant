class CreateOrderedItems < ActiveRecord::Migration
  def change
    create_table :ordered_items do |t|
    	t.integer :product_id
    	t.integer :quantity
    	t.integer :price

      t.timestamps null: false
    end
  end
end
