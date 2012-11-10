class CalendarsController < ApplicationController
  def create
    id = params[:id]
    
    # User id found. 
    if id
      player = Player.find(id)
      
      cal = Palendar.create

      cal.day = params[:day]
      cal.start_time = params[:start_time]
      cal.end_time = params[:end_time]
      cal.player = player
      
      cal.save
      render :json => {'id' => cal.id}, :callback => params[:callback]                          

    # User id NOT found. 
    else
      render :json => {'error' => 'Supplied user id invalid'}, callback => params[:callback]
    end
  end

  def delete
    id = params[:id]
    cal = Palendar.where(:id => id).first
    # User id found. 
    if cal != nil
      cal.destroy
      
      render :json => {'id' => cal.id}, :callback => params[:callback]                          

    # User id NOT found. 
    else
      render :json => {'error' => 'Supplied calendar id invalid'}, :callback => params[:callback]
    end
  end
end
