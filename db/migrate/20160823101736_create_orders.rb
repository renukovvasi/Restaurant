class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
    	t.string :address
    	t.integer :user_id
    	t.datetime :delivery_time
    	t.integer :cost
    	t.integer :weight
    	t.integer :quantity
      t.timestamps null: false
    end
  end
end
