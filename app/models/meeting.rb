class Meeting < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, :use => :slugged

  has_many :talks, :dependent => :destroy
  has_and_belongs_to_many :sponsors
  belongs_to :venue
  validates :title, :presence => true
  delegate :name, :to => :venue, :allow_nil => true, :prefix => :venue

  default_scope order('date DESC')

  scope :visible, where(:visible => true)

  def self.next_meeting
    self.unscoped.where("date >= ?", Date.today).order('date ASC').first
  end

  def self.from_year(year)
    start_date = DateTime.new(year)
    end_date = start_date.end_of_year

    self.where(:date => (start_date..end_date))
  end

  def album
    (@album ||= Album.new(album_id)) if album_id.present?
  end

  def album_id_enum
    Album.all_with_title_and_id
  end

  def slideshow
    album.slideshow
  end

  def photos
    album.try(:photos) || []
  end

end

