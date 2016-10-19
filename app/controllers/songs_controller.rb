class SongsController < ApplicationController

  def new
    @artist = Artist.find(params[:artist_id])
    @song = @artist.songs.new
  end

  def create
    @artist = Artist.find(params[:artist_id])
    @song = @artist.songs.create(song_params)
    if @song.save
      redirect_to song_path(@song)
    else
      render :new
    end 
  end

  def show
    @song = Song.find(params[:id])
  end


  private
  def song_params
    params.require(:song).permit(:title)
  end

end
