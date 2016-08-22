class AddPriceToImages < ActiveRecord::Migration
  def change
  	add_column :images, :price, :integer
  end
end
