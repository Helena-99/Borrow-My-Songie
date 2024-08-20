class BookingsController < ApplicationController

def new
  @booking = Booking.new
end

def create
  @booking = Booking.new(booking_params)
  @song = Song.find(params[:song_id])
  @booking.song = @song
  @booking.user = current_user

  if @booking.save
    redirect_to song_path(@song), notice: "booking request received"
  else
    render 'songs/show', status: :unprocessable_entity
  end
end


private

def booking_params
  params.require(:booking).permit(:start_date, :end_date)
end

end
