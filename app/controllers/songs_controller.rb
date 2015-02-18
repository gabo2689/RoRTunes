class SongsController < ApplicationController


  def new
    #@song = Song.new()
    @song = Song.new()
  end

  def create
    @song = Song.new(song_params)
    song_params.album_id = params[:id]

    if @song.save
      redirect_to album_path(params[:id])
    else
      render :new
    end




  end



  private

  def song_params
    params.required(:song).permit!
  end


end
