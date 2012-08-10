# encoding: utf-8
require 'spec_helper'

describe Meeting do
  it { should validate_presence_of :title }
  it { should have_many :talks }
  it { should belong_to :venue }


  describe "scopes" do
    describe "visible" do
      it "returns meetings with visible attributes set to true" do
        subject.update_attribute(:visible, true)
        described_class.visible.should include(subject)
      end
    end
  end

  describe "#next_meeting" do
    before do
      FactoryGirl.create(:meeting, :title => "Encontro que já foi", :date => DateTime.now - 57.day)
      FactoryGirl.create(:meeting, :title => "Encontro daqui 2 meses", :date => DateTime.now + 60.day)
    end

    let!(:next_meeting) do
      FactoryGirl.create(:meeting,:title => "Próximo encontro", :date => DateTime.now + 27.day)
    end

    it "returns the nearest meeting from today" do
      described_class.next_meeting.should == next_meeting
    end
  end

  describe "#from_year" do
    let(:year) { 1945 }
    let(:meetings) { ["one", "two"]}

    it "finds the meetings with date between the first and last day of the given year and returns it" do
      beginning_of_year = DateTime.new(year,1,1,0,0,0)
      end_of_year = DateTime.new(year,12,31,23,59,59)

      described_class.should_receive(:where).with(:date => (beginning_of_year..end_of_year)).and_return(meetings)

      described_class.from_year(year).should == meetings
    end
  end

  describe ".photos" do

    let(:album_id) { 123123 }

    subject do
      FactoryGirl.create(:meeting, :album_id => album_id)
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

  describe "#venue_name" do
    it "responds to venue_name" do
      expect {subject.venue_name}.to_not raise_error NoMethodError
    end
  end
end

