class RemoveDayFromBh < ActiveRecord::Migration
  def change
  	remove_column :businesshours, :day
  end
end
