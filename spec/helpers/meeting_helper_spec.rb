# -*- encoding : utf-8 -*-
require 'spec_helper'

describe ApplicationHelper do
  describe "#agendatech_link_message" do
    
    context "when the link is nil" do
      it "returns a message saying there is no next meeting scheduled" do
       helper.agendatech_link_message(nil,nil).should be_blank
      end
    end
    
    context "when the link is present" do
      let(:link) do
        "http://www.agendatech/meetingX"
      end
      
      context "when the date has not yet passed" do
        it "returns a bold message inviting the user to confirm his presence through Agendatech link" do
          link_with_message = "<strong>Vai nesse encontro?</strong> " +
                              %Q{<a href="#{link}">Confirme sua presença pela AgendaTech</a>}
          helper.agendatech_link_message(link, Date.today + 1.month).should == link_with_message
        end
      end

      context "when the date has already passed" do
        it "returns Agendatech link with the message" do
          link_with_message = %Q{<a href="#{link}">Veja quem confirmou presença nesse encontro pela AgendaTech</a>}
          helper.agendatech_link_message(link, Date.today - 1.month).should == link_with_message
        end
      end
      
    end
  end
end