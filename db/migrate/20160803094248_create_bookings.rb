class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
    	t.integer :user_id
    	t.integer :items_count
      t.datetime :booking_time
      t.timestamps null: false
    end
  end
end
