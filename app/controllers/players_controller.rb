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

      invites_and_matches = Array.new

      # Create an array of invites and their related matches.
      player.invites.each do |invite|
        invites_and_matches.push({'id' => invite.id,
                                  'accept' => invite.accept, 
                                  'sup_bro' => invite.sup_bro,
                                  'created_at' => invite.created_at,
                                  'updated_at' => invite.updated_at,
                                  'match' => {'id' => invite.match.id,
                                              'date' => invite.match.date,
                                              'name' => invite.match.name,
                                              'created_at' => invite.match.created_at,
                                              'updated_at' => invite.match.updated_at,
                                              'venue' => invite.match.venue}})
      end

      output = {'info' => player,
                'calendars' => player.palendars,
                'invites' => invites_and_matches}

      render :json => {'player' => output}, :callback => params[:callback]                          

    # User NOT found. 
    else
      render :json => {'error' => 'Supplied user id invalid'}, :callback => params[:callback]
    end
  end
end
