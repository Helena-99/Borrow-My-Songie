class SongsController < ApplicationController
  def index
    @user = current_user
    @songs = Song.where.not(user_id: @user.id)
  end

  def new
    @song = Song.new
  end

  def create
    # raise
    @user = current_user
    @song = Song.new(song_params)
    @song.user = @user
    if @song.save
      redirect_to songs_path
    else
      render :new,  status: :unprocessable_entity
    end
  end

  def show
    @song = Song.find(params[:id])
    @booking = Booking.new
  end

  private

  def song_params
    params.require(:song).permit(:title, :image_url, :release_year, :artist, :album, :price)
  end
end
