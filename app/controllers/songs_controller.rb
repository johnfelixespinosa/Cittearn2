class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
  end

  private

     def song_params
       params.require(:song).permit(
        :title, 
        :artist, 
        :difficulty,
        :lyrics,
        )
     end

end
