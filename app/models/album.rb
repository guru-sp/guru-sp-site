class Album

  def self.all
    Picasa.albums
  end

  def initialize(album_id)
    @content = Picasa.photos(:album_id => album_id)
  end

  def photos
  	@content[:photos]
  end

end
