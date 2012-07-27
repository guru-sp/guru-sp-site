# -*- encoding : utf-8 -*-

module ApplicationHelper
  def next_meeting_message(meeting)
    if meeting
      date = meeting.date
      link_to meeting do
        content_tag(:div, l(date, :format => :day_month), :class => "date") +
        content_tag(:div, "local: #{meeting.venue_name}", :class => "place") +
        content_tag(:div, "às #{l(date, :format => :hour)}", :class => "time")
      end
    else
      "Ainda não foi agendado. Aguarde!"
    end
  end
end
