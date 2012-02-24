require 'spec_helper'

describe Album do

  let(:valid_album_id) { 5680035898646145473 }

  let(:subject) do
    described_class.new(valid_album_id)
  end

  context ".all" do
    
    it "returns all gurusp.group albums on picasa" do
      Picasa.should_receive(:albums)
      described_class.all
    end

    it "returns a list with all albums" do
      described_class.all.should be_an_instance_of(Array)
    end

  end

  context "#initialize" do
    it "gets the photos from a given album_id" do
      Picasa.should_receive(:photos).with(:album_id => valid_album_id)
      described_class.new(valid_album_id)
    end
  end

  context "#photos" do
    it "returns a list of photos" do
      subject.photos.should be_an_instance_of(Array)
    end
  end

end
