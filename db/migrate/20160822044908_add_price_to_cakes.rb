class AddPriceToCakes < ActiveRecord::Migration
  def change
  	add_column :cakes, :price, :integer
  end
end
