module AlbumsHelper

  def get_albums_count
    Album.count
  end

  def get_duracion
    Song.where(album_id: params[:id])
  end

end
