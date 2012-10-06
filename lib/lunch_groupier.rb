require 'groupier'

class LunchGroupier
  include Groupier

  def initialize(group_names, lunch_places)
    @group_names = group_names
    @lunch_places = lunch_places
  end

  def create_players_groups
    num_groups = Player.count/5
    playersa = Player.find_all_by_department('IT and Product')
    playersb = Player.find_all_by_department('Customer Support')
    playersc = Player.find_all_by_department('HR and Administrative')
    playersd = Player.find_all_by_department('Marketing and Design')
    playerse = Player.find_all_by_department('Publisher')
    playersf = Player.find_all_by_department('Advertiser')
    playersg = Player.find_all_by_department('Billing')
    
    player_groups =[]
    num_groups.times.each do
      player_groups << []
    end

    playersall = playersa + playersb + playersc + playersd + playerse + playersf + playersg

    playersall.each_with_index do |p, i|
      group_num = i % num_groups
      p "putting player #{p.name} in group #{group_num}"
      player_groups[group_num]<< p
    end


    player_groups
  end

  def create_groups
    player_groups = self.create_players_groups
    names = @group_names.take_random(player_groups.size)
    places = @lunch_places.take_random(player_groups.size)

    player_groups.zip(names, places).map do |players, name, place|
      LunchGroup.new(players, name, place)
    end
  end
end
