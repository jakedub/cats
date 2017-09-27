class SessionsController < ApplicationController
  skip_before_action :verify_authentication

  def create
    user = User.find_by(name: params[:name])

    if user && user.authenticate(params[:password])
      render json: { token: user.api_token }
    else
      render json: { error: "Invalid" }, status: :unauthorized
    end
  end
end
