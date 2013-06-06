class Album
  attr_reader :content

  def self.all
    Picasa.albums
  end

  def self.all_with_title_and_id
    all.inject(hash = {}) do |albums,album|
      albums[album[:title]] = album[:id]
      albums
    end
  end

  def initialize(album_id)
    @content = Picasa.photos(:album_id => album_id)
  end

  def photos
    @content[:photos] || []
  end

  def slideshow
    @content[:slideshow]
  end

end
