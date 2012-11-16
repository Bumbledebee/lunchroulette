class Place < ActiveRecord::Base
  attr_accessible :address, :comment, :name, :picture, :restaurant_name
end
