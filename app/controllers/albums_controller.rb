class AlbumsController < ApplicationController
  def index
    @albums = Album.all
  end

  def show
    @album = Album.new(params[:id])
  end
end

