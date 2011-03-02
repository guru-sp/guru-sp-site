class AlbumsController < ApplicationController
  
  def index
    @albums = Album.albums
  end

  def show
    @album = Album.photos(params[:id])

    respond_to do |format|
      format.html
    end
  end

end
