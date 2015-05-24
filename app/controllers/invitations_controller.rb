class InvitationsController < ApplicationController

  def create
    @invitation = Invitation.new
    @invitation.status.unknown!

    respond_to do |format|
      if @invitation.save
        format.html { redirect_to @invitation, notice: 'invitation was successfully created.' }
        format.json { render :show, status: :created, location: @invitation }
      else
        format.html { render :new }
        format.json { render json: @invitation.errors, status: :unprocessable_entity }
      end
    end
  end


end
