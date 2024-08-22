class BookingsController < ApplicationController

def new
  @booking = Booking.new
end

def create
  @booking = Booking.new(booking_params)
  @song = Song.find(params[:song_id])
  @booking.song = @song
  @booking.user = current_user
  # raise

  if @booking.save
    redirect_to dashboard_path, notice: "booking request received"
  else
    render 'songs/show', status: :unprocessable_entity
  end

end

def approve
  booking = Booking.find(params[:id])
  booking.status = 'accepted'
  booking.save
  redirect_to dashboard_path, notice: 'Booking accepted'
end

def decline
  booking = Booking.find(params[:id])
  booking.status = 'declined'
  booking.save
  redirect_to dashboard_path, notice: 'Booking declined'
end

private

def booking_params
  params.require(:booking).permit(:start_date, :end_date)
end

end
