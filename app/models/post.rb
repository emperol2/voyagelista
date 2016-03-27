class Post < ActiveRecord::Base
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
  mount_uploaders :pictures, PicturesUploader

  serialize :pictures
end
