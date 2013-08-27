class Speaker < ActiveRecord::Base
  attr_accessible :name, :nickname, :twitter
  validates  :name, :presence => true

  has_and_belongs_to_many :talks
end
