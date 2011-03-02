require 'picasa'

class Album

  PICASA_USER = "gurusp.org"

  def albums
    Picasa.albums(:google_user => PICASA_USER)
  end

  def photos(album_id)
    photos = Picasa.photos(:google_user => PICASA_USER, :album_id => album_id)
    photos[:photos]
  end

end
