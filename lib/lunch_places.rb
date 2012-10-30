# encoding: utf-8
require 'random_enumerable'

# a curated collection atm
class LunchPlaces
  include RandomEnumerable
  @@names = [
"RosenBurger",
"PapaPane",
"Fam Dang",
"Yurok",
"Spagehtti Western",
"Nola`s am Weinberg",
"Dudu",
"Yumcha Heroes",
"Good Morning Vietam",
"Japanes Place Across From Base"
]

  def collection
    @@names
  end
end
