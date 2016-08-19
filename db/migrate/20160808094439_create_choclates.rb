class CreateChoclates < ActiveRecord::Migration
  def change
    create_table :choclates do |t|
    	t.string :name
    	t.string :description

      t.timestamps null: false
    end
  end
end
