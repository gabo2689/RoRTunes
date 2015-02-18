class SongsController < ApplicationController


  def new
    #@song = Song.new()
    @song = Song.new()
  end

  def create

    @song = Song.new(song_params)
    @song.album_id=params[:album_id]


    if @song.save
      redirect_to album_path(params[:album_id])
    else
      render :new
    end

  end


  def destroy

    @song = Song.find(params[:id])

    if @song.destroy
      redirect_to album_path(params[:album_id])
    end

  end

  private

  def song_params
    params.required(:song).permit!
  end






end
