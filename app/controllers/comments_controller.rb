class CommentsController < ApplicationController

  def create
    @place = Place.find(params[:place_id])
    @player = Player.find(params[:player_id])
    @comment = @place.comments.create(params[:comment])
    redirect_to place_path(@place)
  end
end
