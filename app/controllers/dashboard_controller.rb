class DashboardController < ApplicationController
  def show

    # MY SONGS
    # Songs owned by me [done]
    @user = current_user
    @my_songs = Song.where(user_id: @user.id)
    # Incoming bookings on my songs [done in view]

    # MY PURCHASES
    @my_purchases = Booking.includes(:song).where(user_id: @user.id)

    # Songs I've requested to book that are pending approval

    # Songs I'm currently renting

  end
end

# @my_purchases = Song.joins(:bookings).where(bookings: { user_id: @user.id })
