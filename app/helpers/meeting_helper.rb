# -*- encoding : utf-8 -*-

module MeetingHelper
  def agendatech_link_message(agendatech_link, date)
    if agendatech_link.present?
      if date >= Date.today
        content_tag(:strong, "Vai nesse encontro?") + " " +
        link_to("Confirme sua presença pela AgendaTech", agendatech_link)
      else
        link_to("Veja quem confirmou presença nesse encontro pela AgendaTech", agendatech_link)
      end
    end
  end
end
