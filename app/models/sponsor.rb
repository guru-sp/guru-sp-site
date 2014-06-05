class Sponsor < ActiveRecord::Base
  attr_accessible :name, :url, :meeting_ids, :logo, :logo_cache, :remove_logo

  validates :name, :presence => true

  has_and_belongs_to_many :meetings
  mount_uploader :logo, LogoUploader
end
