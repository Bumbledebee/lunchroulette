require 'random_enumerable'

# from http://www.rickwalton.com/curricul/lanimals.htm
class AnimalNames
  include RandomEnumerable
  @@names = [
"101-in-1_Games",
"AeriaGames",
"Age_of_Champions_Videos",
"alaplaya",
"All_Upjers_Games",
"Android_Suscriptions",
"BattleOn_Games",
"Billing.Softnyx.Com",
"Car_Town_Live_-_060612",
"Cash_King",
"Crime_City_Android",
"DarkOrbit",
"Defender_2",
"DH_Texas_Poker",
"Dinosaur",
"DragRacingAndroid",
"Drakensang",
"Fantage",
"Farmerama",
"ForgeofEmpires",
"FriendCaller_Pro",
"Garfield"s_Diner_(Android)",
"gPotato",
"Grepolis",
"habbo.com",
"Hello_Kitty_Cafe_(Android)"
].map(&:pluralize).map(&:capitalize)

  def collection
    @@names
  end
end
