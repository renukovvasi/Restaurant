class Booking < ActiveRecord::Base
	belongs_to :user
	def deadline
		booking_date = self.created_at	
		deadline = booking_date + 2.hours	
		if booking_date.hour < 10
			deadline = booking_date.at_midday
		elsif deadline.hour > 3
			td = deadline.to_i - (booking_date.at_midday + 3.hours).to_i
			nd = ((booking_date + 1.day).at_midday - 2.hours).to_i + td
			deadline = Time.at(nd)
		elsif 
    	deadline
		end
	end
end
