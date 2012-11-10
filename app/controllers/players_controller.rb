class PlayersController < ApplicationController
  def create
    player = Player.create
    
    player.name = params[:name]
    player.email = params[:email]
    player.dob = params[:dob]
    player.gender = params[:gender]
    player.facebook_id = params[:facebook_id]
    player.lat = params[:lat]
    player.lng = params[:lng] 
    player.radius = params[:radius]
    
    player.save
    
    render :json => {'id' => player.id}, :callback => params[:callback]                          
  end
  
end
