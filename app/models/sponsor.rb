class Sponsor < ActiveRecord::Base
  attr_accessible :name, :url
  validates :name, :presence => true

  has_and_belongs_to_many :meetings
end
