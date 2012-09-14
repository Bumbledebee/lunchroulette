# encoding: utf-8
require 'random_enumerable'

# a curated collection atm
class LunchPlaces
  include RandomEnumerable
  @@names = [
"RosenBurger",
"PapaPane",
"Dang Fang",
"Yurok",
"xxxxx",
"Antipodes",
"Luigi Zuckermann",
"Yumcha Heroes",
"Good Morning Vietam",
"Japanes Place Across From Base"
]

  def collection
    @@names
  end
end
