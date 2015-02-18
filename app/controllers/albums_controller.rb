class AlbumsController < ApplicationController

  def index

    @albums = Album.order(:created_at)

  end

  def new
    @album = Album.new()
  end

  def create
    @album = Album.new(album_params)
    if @album.save
      redirect_to album_path(@album) , flash: {notice: "album created successfully!" }
    else
      render :new
    end

  end

  def show
    @album = Album.find(params[:id])
  end


  private

  def album_params
    params.required(:album).permit!
  end


end
