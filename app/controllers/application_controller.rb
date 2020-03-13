class ApplicationController < ActionController::API
  include ActionController::HttpAuthentication::Token::ControllerMethods

  # before_action :authenticate
  
  
  protected
  
  def authenticate
    authenticate_token || render_unauthorized
  end

  def render_unauthorized(realm = "Application")
    self.headers["WWW-Authenticate"] = %(Token realm="#{realm}")
    render json: 'Bad credentials', status: :unauthorized
  end

  def authenticate_token
    authenticate_with_http_token do |token, _|
      Authentication::TokenAuthenticator.authenticate_token(token)
    end
  end
end
