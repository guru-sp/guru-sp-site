class Venue < ActiveRecord::Base
  attr_accessible :address, :details, :latitude, :longitude, :name
  validates :name, :address, :presence => true
end
