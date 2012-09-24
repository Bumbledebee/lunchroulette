require 'random_enumerable'

# from backend, some application names
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
