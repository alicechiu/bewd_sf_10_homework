class SongsController < ApplicationController

  def new
    @song = Song.new
  end

  def create
    @artist = Artist.find(params[:artist_id])
    @song = @artist.song.create(song_params)
      redirect_to artist_path(@artist)
  end

  private
    def song_params
      params.require(:song).permit(:title, :length, :genre)
    end
end
