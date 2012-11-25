class Comment < ActiveRecord::Base
  attr_accessible :comment, :name, :picture
  mount_uploader :picture, PictureUploader

end
