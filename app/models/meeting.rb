class Meeting < ActiveRecord::Base
  has_many :talks, :dependent => :destroy
  belongs_to :venue
  validates :title, :presence => true
  delegate :name, :to => :venue, :allow_nil => true, :prefix => :venue

  default_scope order('date ASC')

  scope :visible, where(:visible => true)

  def self.next_meeting
    self.where("date >= ?", Date.today).order('date ASC').first
  end

  def self.from_year(year)
    start_date = DateTime.new(year)
    end_date = start_date.end_of_year

    self.where(:date => (start_date..end_date))
  end

  def photos
    if self.album_id.present?
      Album.new(self.album_id).photos
    else
      []
    end
  end

  def album_id_enum
    Album.all_with_title_and_id
  end
end

