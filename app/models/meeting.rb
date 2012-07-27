class Meeting < ActiveRecord::Base
  has_many :talks, :dependent => :destroy
  belongs_to :venue
  validates :title, :presence => true
  delegate :name, :to => :venue, :allow_nil => true, :prefix => :venue

  default_scope order('date ASC')

  def self.next_meeting
    self.where("date >= ?", Date.today).order('date ASC').first
  end

  def photos
    if self.album_id.present?
      Album.new(self.album_id).photos
    else
      []
    end
  end
end

