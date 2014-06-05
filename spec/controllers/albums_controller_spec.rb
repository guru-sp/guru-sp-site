require 'spec_helper'

describe AlbumsController do

  describe "GET index" do
    it "assigns all albums as @albums" do
      list = [1,2,3]
      Album.should_receive(:all).and_return(list)
      get :index
      assigns(:albums).should == list
      response.should be_success
    end
  end

  describe "GET show" do
    it "assigns the requested album as @album" do
      album = double(Album)
      Album.should_receive(:new).with("1234").and_return(album)
      get :show, :id => 1234
      assigns(:album).should == album
      response.should be_success
    end
  end
end
