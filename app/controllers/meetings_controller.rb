class MeetingsController < InheritedResources::Base
  respond_to :html
  actions :index, :show

  def index
    @current_year = DateTime.now.year
    @year = params[:ano].present? ? params[:ano].to_i : @current_year

    @meetings = Meeting.visible.from_year(@year)
  end
end

