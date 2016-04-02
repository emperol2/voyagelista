class Post < ActiveRecord::Base

  validates :address, :title, :desc, presence: true

  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
  mount_uploaders :pictures, PicturesUploader

  serialize :pictures
end
