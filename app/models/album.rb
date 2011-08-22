require 'picasa'

class Album

  PICASA_USER = "gurusp.group"

  def self.albums
    Picasa.albums(:google_user => PICASA_USER)
  end

  def self.photos(album_id)
    photos = Picasa.photos(:google_user => PICASA_USER, :album_id => album_id)
    photos[:photos]
  end

end
