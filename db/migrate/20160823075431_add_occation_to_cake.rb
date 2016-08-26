class AddOccationToCake < ActiveRecord::Migration
  def change
  	add_column :cakes, :occation_id, :integer
  end
end
