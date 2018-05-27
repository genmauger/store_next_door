class BookingsController < ApplicationController

  def booking
    # @booking = Booking.new
    # @facility_space = StorageFacility.find(6).user_id
    # @current_users = User.find(@facility_space).profile.first_name
    @current_user = current_user
    # @facility_space_id = FacilitySpace.find(params[:id])
  end

  #To make a new booking:
  #Want to include the details of the person who booked
  #And the person who it is being booked from
  #First display details of person who owns property

  private

  def booking_params
    params.require(:booking).permit(:date_from, :date_to, :user_id, :storage_facility_id, :facility_spaces_id, :description)
  end

end