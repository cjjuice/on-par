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
    player = Player.where(:id => id).first

    # User found. 
    if player != nil
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

    # User NOT found. 
    else
      render :json => {'error' => 'Supplied user id invalid'}, :callback => params[:callback]
    end
  end
  
  def show
    id = params[:id]
    player = Player.where(:id => id).first
    output = Hash.new

    # User id found. 
    if player != nil

      output = {'info' => player,
                'calendars' => player.palendars,
                'matches' => player.matches}

      render :json => {'player' => output}, :callback => params[:callback]                          

    # User NOT found. 
    else
      render :json => {'error' => 'Supplied user id invalid'}, :callback => params[:callback]
    end
  end
end
