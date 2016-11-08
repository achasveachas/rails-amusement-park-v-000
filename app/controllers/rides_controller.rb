class RidesController < ApplicationController
  def create
    attraction = Attraction.find(params[:attraction_id])
    ride = attraction.rides.new
    ride.user = current_user
    ride.save
    flash[:notice] = ride.take_ride
    redirect_to user_path(ride.user)
  end
end
