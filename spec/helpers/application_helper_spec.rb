# -*- encoding : utf-8 -*-
require 'spec_helper'

describe ApplicationHelper do
  describe "#next_meeting_message" do
    
    context "when next meeting does not exist" do
      it "returns a message saying there is no next meeting scheduled" do
       helper.next_meeting_message(nil).should == "Ainda não foi agendado. Aguarde!"
      end
    end
    
    context "when the next meeting exists" do
      let :date do
        DateTime.current
      end
      
      let :venue_name do
        "Caelum"
      end
      
      let :meeting do
        FactoryGirl.create(:meeting, :date => date)
      end
      
      it "gets the meeting date" do
        meeting.should_receive(:date).and_return(date)
        helper.next_meeting_message(meeting)
      end
      
      it "gets the meeting venue name" do
        meeting.should_receive(:venue_name).and_return(venue_name)
        helper.next_meeting_message(meeting)
      end
      
      it "returns a html with the meeting date (DD/MM), venue name and time (HH:MM) and a link to the meeting" do
        meeting.stub(:venue_name).and_return(venue_name)
        
        html_meeting =  "<a href=\"/encontros/#{meeting.id}\">" +
                        "<div class=\"date\">#{date.strftime("%d/%m")}</div>" +
                        "<div class=\"place\">local: #{venue_name}</div>" +
                        "<div class=\"time\">às #{date.strftime("%H:%M")} hs</div>" +
                        "</a>"
        helper.next_meeting_message(meeting).should == html_meeting
      end
      
    end
  end
end