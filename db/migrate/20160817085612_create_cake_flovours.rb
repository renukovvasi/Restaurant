class CreateCakeFlovours < ActiveRecord::Migration
  def change
    create_table :cake_flovours do |t|
    	t.string :name

      t.timestamps null: false
    end
  end
end
