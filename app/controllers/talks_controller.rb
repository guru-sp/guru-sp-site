class TalksController < InheritedResources::Base
  respond_to :html
  actions :index, :show
end
