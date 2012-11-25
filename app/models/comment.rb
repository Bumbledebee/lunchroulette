class Comment < ActiveRecord::Base
  attr_accessible :comment, :name, :picture, :place_id
  mount_uploader :picture, PictureUploader
  belongs_to :place
  belongs_to :player

end
