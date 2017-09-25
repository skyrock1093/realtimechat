class Api::SessionsController < ApplicationController
  before_action :require_login, only: %i(destroy)
  before_action :require_logout, only: %i(create)

  def create
    @user = User.find_by_credentials(
      user_params[:username],
      user_params[:password]
    ).
      includes(:teams, :team_memberships)
    if @user
      login!(@user)
      render :show
    else
      @errors = [{general: ['Invalid username or password']}]
      render partial: 'api/shared/errors.json.jbuilder',
        status: 400
    end
  end

  def destroy
    logout!
    render json: {}
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end

end
