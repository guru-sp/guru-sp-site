require 'spec_helper'

describe Meeting do
  it { should validate_presence_of :title }
  it { should have_many :talks }

  describe ".next" do
    before(:all) do
      Factory(:meeting, :date => DateTime.now - 57.day)
      Factory(:meeting, :date => DateTime.now + 60.day)
      @next_meeting = Factory(:meeting, :date => DateTime.now + 27.day)
    end

    it "returns the nearest meeting from today" do
      Meeting.next_meeting.should == @next_meeting
    end
  end

end

