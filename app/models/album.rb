class Album

  def initialize(album_id)
    @content = Picasa.photos(:album_id => album_id)
  end

  def photos
    @content[:photos]
  end

  def self.all
    Picasa.albums
  end

end
