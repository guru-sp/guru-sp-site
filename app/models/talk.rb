class Talk < ActiveRecord::Base
  belongs_to :meeting
  has_and_belongs_to_many :speakers
  validates  :title, :presence => true
end

