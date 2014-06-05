class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :load_next_meeting
  
  def load_next_meeting
    @next_meeting = Meeting.next_meeting
  end
  
end
