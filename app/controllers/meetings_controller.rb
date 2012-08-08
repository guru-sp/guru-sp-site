class MeetingsController < InheritedResources::Base
  respond_to :html
  actions :index, :show
  
  def index
    year = params[:ano].present? ? params[:ano].to_i : DateTime.now.year
    
    @meetings = Meeting.from_year(year)
  end
end

