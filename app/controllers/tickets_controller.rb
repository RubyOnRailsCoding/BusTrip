class TicketsController < ApplicationController

	def create
		@trip = Trip.find(params[:ticket][:trip_id])
		current_user.buy!(@trip)
		redirect_to @trip
	end

	def destroy
		
	end
end