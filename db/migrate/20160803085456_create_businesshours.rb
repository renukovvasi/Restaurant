class CreateBusinesshours < ActiveRecord::Migration
  def change
    create_table :businesshours do |t|
      t.datetime :opening_at
      t.datetime :closing_at
      t.string :day
      t.boolean :holiday, default: false

      t.timestamps null: false
    end
  end
end
