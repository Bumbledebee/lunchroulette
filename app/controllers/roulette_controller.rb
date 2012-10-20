require 'lunch_groupier_support'
require 'lunch_pics'

class RouletteController < ApplicationController
  include LunchGroupierSupport

  def signup
  	@user = session[:user]
  	if @user!=nil 
  	   player = Player.find_by_email(@user.uid)
  	   if player!=nil
        redirect_to player_path(player)
  	   else
        redirect_to "/players/new"
       end
    else
        render "signup.html.erb"
    end

    
  end


  def spin
    @groups = lunch_groupier.create_groups
    @pic = LunchPics.new.take_random(1).first
  end

end
