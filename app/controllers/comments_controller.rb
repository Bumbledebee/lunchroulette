class CommentsController < ApplicationController

  def create
    @place = Place.find(params[:place_id])
    @player = Player.find(params[:player_id])
    @comment = Comments.create(params[:place_id, :player_id]])
    redirect_to place_path(@place)
  end
end
