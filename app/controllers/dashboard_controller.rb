class DashboardController < ApplicationController
  def show
    @user = current_user
    @my_songs = Song.where(user_id: @user.id)
    @my_purchases = Booking.includes(:song).where(user_id: @user)
    @my_songs.each do |song|
      song.bookings.each do |booking|
        if Date.today >= booking.start_date && Date.today <= booking.end_date && booking.status == "accepted"
          song.available = false
        else
          song.available = true
        end
      end
    end
  end
end
