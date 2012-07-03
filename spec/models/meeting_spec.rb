# encoding: utf-8
require 'spec_helper'

describe Meeting do
  it { should validate_presence_of :title }
  it { should have_many :talks }
  it { should belong_to :venue }

  describe "#next_meeting" do
    before do
      Factory(:meeting, :title => "Encontro que já foi", :date => DateTime.now - 57.day)
      Factory(:meeting, :title => "Encontro daqui 2 meses", :date => DateTime.now + 60.day)
    end

    let!(:next_meeting) do
      Factory(:meeting,:title => "Próximo encontro", :date => DateTime.now + 27.day)
    end

    it "returns the nearest meeting from today" do
      described_class.next_meeting.should == next_meeting
    end
  end

  describe ".photos" do

    let(:album_id) { 123123 }

    subject do
      Factory(:meeting, :album_id => album_id)
    end

    context "when an album_id is present" do
      it "initializes a new album with the album_id" do
        album = mock.as_null_object
        Album.should_receive(:new).with(album_id).and_return(album)

        subject.photos
      end

      it "returns the photos from the initialized album" do
        photos = [ "a", "b", "c"]
        album = double(:album)
        Album.stub(:new).with(album_id).and_return(album)

        album.should_receive(:photos).and_return(photos)
        subject.photos.should == photos
      end
    end

    context "when an album_id is not present" do
      let(:album_id) { nil }

      it "returns an empty array" do
        subject.photos.should == []
      end
    end
  end

end

