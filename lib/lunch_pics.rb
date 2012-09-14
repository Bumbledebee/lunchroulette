# encoding: utf-8
require 'random_enumerable'

# a curated collection atm
class LunchPics
  include RandomEnumerable
  @@pics = [
"http://dl.dropbox.com/u/38475430/Surprise%20Lunch%20Pics/DSC_0211.jpg",
"http://dl.dropbox.com/u/38475430/Surprise%20Lunch%20Pics/DSC_0209.jpg",
"http://dl.dropbox.com/u/38475430/Surprise%20Lunch%20Pics/DSC_0212.jpg",
"http://dl.dropbox.com/u/38475430/Surprise%20Lunch%20Pics/DSC_0213.jpg"
]

  def collection
    @@pics
  end
end
