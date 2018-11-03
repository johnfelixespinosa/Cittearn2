class SongsController < ApplicationController
  def index
    @songs = Song.all.order('title ASC')
  end

  def show
    @song = Song.find_by(id: params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)

    if @song.save
      redirect_to song_path(@song)
    else
      render 'new'
    end
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
