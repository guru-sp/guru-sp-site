class Meeting < ActiveRecord::Base
  has_many :talks
  validates :title, :presence => true

  def self.next_meeting
    self.where("date >= ?", Date.today).order('date ASC').first
  end
end

