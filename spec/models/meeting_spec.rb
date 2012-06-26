# encoding: utf-8
require 'spec_helper'

describe Meeting do
  it { should validate_presence_of :title }
  it { should have_many :talks }
  it { should belong_to :venue }

  describe ".next" do
    before do
      Factory(:meeting, :title => "Encontro que já foi", :date => DateTime.now - 57.day)
      Factory(:meeting, :title => "Encontro daqui 2 meses", :date => DateTime.now + 60.day)
    end

    let!(:next_meeting) do
      Factory(:meeting,:title => "Próximo encontro", :date => DateTime.now + 27.day)
    end

    it "returns the nearest meeting from today" do
      Meeting.next_meeting.should == next_meeting
    end
  end

end

