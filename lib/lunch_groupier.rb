require 'groupier'

class LunchGroupier
  include Groupier

  def initialize(group_names, lunch_places)
    @group_names = group_names
    @lunch_places = lunch_places
  end

  def create_players_groups
    num_groups = Player.where(:participating =>'Yes').count/5
    player_groups =[]
    num_groups.times.each do
      player_groups << []
    end

    playersall = []
 
    Player::DEPARTMENTS.each do |department|
     players_department_yes = Player.where(:participating =>'Yes').find_all_by_department(department).shuffle
     players_department_yes.each do |p|
       playersall << p
     end
    end
   

    playersall.each_with_index do |player, index|
      group_num = index % num_groups
      p "putting player #{player.name} in group #{group_num}"
      player_groups[group_num]<< player
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