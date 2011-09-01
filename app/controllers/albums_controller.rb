class AlbumsController < ApplicationController
  def index
    @albums = Album.albums
  end

  def show
    @album = Album.photos(params[:id])
  end
end

