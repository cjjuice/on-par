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
  
  def update
    id = params[:id]

    # User id found. 
    if id
      player = Player.find(id)

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

    # User id NOT found. 
    else
      render :json => {'error' => 'Supplied user id invalid'}, callback => params[:callback]
    end
  end
end
