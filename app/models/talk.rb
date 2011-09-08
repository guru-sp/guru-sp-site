class Talk < ActiveRecord::Base
  belongs_to :meeting
  validates  :title, :presenter_name, :presence => true
end

