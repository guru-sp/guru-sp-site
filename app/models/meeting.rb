class Meeting < ActiveRecord::Base
  validates :title, :presence => true
end

