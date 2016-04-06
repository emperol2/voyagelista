class Post < ActiveRecord::Base

  has_many :post_attachments
  accepts_nested_attributes_for :post_attachments

  validates :address, :title, :desc, presence: true

  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
  #mount_uploaders :pictures, PicturesUploader

  #serialize :pictures
end
