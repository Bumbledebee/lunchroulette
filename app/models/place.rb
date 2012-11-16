class Place < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
  attr_accessible :address, :comment, :name, :picture, :restaurant_name
end
