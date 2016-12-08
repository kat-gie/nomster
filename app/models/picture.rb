class Picture < ActiveRecord::Base
  belongs_to :place
  belongs_to :user
  has_many :pictures
  mount_uploader :picture, PictureUploader
end
