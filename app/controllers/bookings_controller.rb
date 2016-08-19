class BookingsController < ApplicationController
	def new
		@user = User.find(params[:user_id])
		@booking = @user.bookings.build
	end
	def create
		@user = User.find(params[:user_id])		
		@booking = @user.bookings.build(booking_params)
		@booking.save
	    redirect_to @booking.user
	end

	def index
		@user = User.find(params[:user_id])
		@bookings = @user.bookings
	end

	def booking_params
		params[:booking].permit(:items_count)
	end
end
