class Meeting < ActiveRecord::Base
  has_many :talks, :dependent => :destroy
  belongs_to :venue
  validates :title, :presence => true

  default_scope order('date ASC')

  def self.next_meeting
    self.where("date >= ?", Date.today).order('date ASC').first
  end
end

