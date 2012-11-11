class InvitesController < ApplicationController
  def update
    id = params[:id]
    accept = params[:accept]
    sup_bro = params[:sup_bro]

    invite = Invite.where(:id => id).first

    # Invite found.
    if invite != nil
      invite.accept = accept
      invite.sup_bro = sup_bro

      invite.save

      render :json => {'id' => invite.id}, :callback => params[:callback]                          

    # Invite NOT found. 
    else
      render :json => {'error' => 'Supplied invite id invalid'}, :callback => params[:callback]
    end
  end
end
