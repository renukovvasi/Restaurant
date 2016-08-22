class AddPriceToCookies < ActiveRecord::Migration
  def change
  	add_column :cookies, :price, :integer
  end
end
