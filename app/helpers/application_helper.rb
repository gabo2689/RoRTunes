module ApplicationHelper

  def get_singer_count
    Singer.count
  end

  def get_albums_count
    Album.count
  end
end
