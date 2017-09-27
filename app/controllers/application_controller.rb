class ApplicationController < ActionController::API
  include ActionController::HttpAuthentication::Token::ControllerMethods

 before_action :verify_authentication

 def verify_authentication
   user = authenticate_with_http_token do |token, options|
     User.find_by(api_token: token)
   end

   unless user
     render json: { error: "Restricted" }, status: :unauthorized
   end
 end
end
