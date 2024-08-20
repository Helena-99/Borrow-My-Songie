class DashboardController < ApplicationController
  def show
      # @my_songs = Song.where(owner_id: params[:id])
      # p current_user.id
      @user = current_user

      @my_songs = Song.where(user_id: @user.id)


  end
end
