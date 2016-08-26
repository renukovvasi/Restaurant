class CreateTotalLists < ActiveRecord::Migration
  def change
    create_table :total_lists do |t|

      t.timestamps null: false
    end
  end
end
