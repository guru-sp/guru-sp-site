require 'spec_helper'

describe Album do

  let(:valid_album_id) { 5680035898646145473 }

  let(:photos) { [1, 2, 3] }

  let(:content) do
    { :photos => photos, :slideshow => 'slideshowURL' }
  end

  subject do
    Picasa.stub(:photos).and_return(content)
    described_class.new(anything)
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

  context ".all_with_title_and_id" do
    let(:array_of_meetings) do
      [ {:id => 123123, :title => "Encontro XYZ", :anon => "trololol"},
        {:id => 567, :title => "Encontro ABC", :anon => "trololol"},
        {:id => 1534324, :title => "Encontro 012", :anon => "trololol"}
      ]
    end

    before do
      described_class.stub(:all).and_return(array_of_meetings)
    end

    it "returns a hash with meeting titles as keys and ids as values" do
      described_class.all_with_title_and_id.should == {
        "Encontro XYZ" => 123123,
        "Encontro ABC" => 567,
        "Encontro 012" => 1534324,
      }
    end
  end

  context "#initialize" do
    it "gets the photos from a given album_id" do
      Picasa.should_receive(:photos).with(:album_id => valid_album_id)
      described_class.new(valid_album_id)
    end

    it 'sets the album content' do
      Picasa.stub(:photos).and_return(content)
      described_class.new(anything).content.should == content
    end
  end

  context "#photos" do
    it "returns a list of photos from the album content" do
      subject.photos.should == photos
    end
  end

  context "#slideshow" do
    it "gets the slideshow from the album content" do
      subject.slideshow.should == 'slideshowURL'
    end
  end

end
