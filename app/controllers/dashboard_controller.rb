class DashboardController < ApplicationController
  def show
    @user = current_user
    @my_songs = Song.where(user_id: @user.id)
  end
end
