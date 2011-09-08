class Meeting < ActiveRecord::Base
  has_many :talks
  validates :title, :presence => true
end

