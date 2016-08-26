class AddColumnsToTotallist < ActiveRecord::Migration
  def change
  	add_column :total_lists, :item_id, :integer
  	add_column :total_lists, :item_type, :string
  	add_column :total_lists, :order_count, :integer
  	add_column :total_lists, :status, :boolean, default: :true
  	add_column :total_lists, :rating, :integer
  end
end
