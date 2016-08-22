class AddPriceToChoclates < ActiveRecord::Migration
  def change
  	add_column :choclates, :price, :integer
  end
end
