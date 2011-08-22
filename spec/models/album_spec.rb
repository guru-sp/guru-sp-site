require 'spec_helper'

describe Album do
  
  context ".albums" do
    
    it "returns all albums" do
      Album.albums.should be_an_instance_of(Array)
    end
    
    it "has a title" do
      Album.albums.first.should have_key(:title)
    end

  end

  context ".photos" do

    it "returns all photos" do
      Album.photos(Album.albums.first[:id]).should be_an_instance_of(Array)
    end

    it "has a thumbnail_1" do
      album_id = Album.albums.first[:id]
      photo = Album.photos(album_id)
      photo.first.should have_key(:thumbnail_1)
    end

  end
  
end
