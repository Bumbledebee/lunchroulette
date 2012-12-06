class CommentsController < ApplicationController

  def create
    @place = Place.find(params[:place_id])
    @player = Player.find(params[:player_id])
    @comment = Comments.create(:place_id => params[:place_id], :player_id => params[:player_id])
    redirect_to place_path(@place)
  end
end
