
class AuthenticationsController < ApplicationController
 

  def index
  end
  
  def create
  	auth_data = request.env["omniauth.auth"]
  	auth = Authentication.find_or_create(:provider => params[:provider],
  								         :uid => auth_data[:uid])
    session[:user] = auth
    @user = session[:user]
    player = Player.find_by_email(@user.uid)
        if player!=nil
           redirect_to player_path(player)
        else
           redirect_to "/players/new"
        end
  end
  
  def destroy
    reset_session
    redirect_to '/'
  end


end


