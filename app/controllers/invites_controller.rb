class InvitesController < ApplicationController
  before_action :require_channel_membership, only: %i(create)

  def create
    
  end

  def consume

  end

  private

  def require_channel_membership
    unless current_user.channel_ids.include?(invite_params[:channel_id])
      render json: [
        {error: "You do not have permission to create invites for that channel"}
      ], status: 401
    end
  end

  def invite_params
    params.require(:invite).permit(:channel_id)
  end

end
