require 'random_enumerable'

# from http://www.rickwalton.com/curricul/lanimals.htm
class AnimalNames
  include RandomEnumerable
  @@names = [
"AeriaGames",
"alaplaya",
"CashKing",
"DarkOrbit",
"Defender2",
"Dinosaur",
"DragRacingAndroid",
"Drakensang",
"Fantage",
"Farmerama",
"ForgeofEmpires",
"gPotato",
"Grepolis",
].map(&:pluralize).map(&:capitalize)

  def collection
    @@names
  end
end
