class ApplicationController < ActionController::API
  include ActionController::HttpAuthentication::Token::ControllerMethods

  before_action :authenticate
  
  
  
  def authenticate
    authenticate_token || render_unauthorized
  end
  protected
  def authenticate_token
    authenticate_with_http_token do |token, options|
      idp_jwks_url = 'https://cognito-idp.us-west-2.amazonaws.com/us-west-2_q9IkW7VmH/.well-known/jwks.json'
      
      @jwk_set ||= JSON::JWK::Set.new(
        JSON.parse(
          RestClient.get(idp_jwks_url)
        )
      )
      
      id_token = JSON::JWT.decode token, @jwk_set
      
      token_data = JSON.parse(id_token.to_json)
      
      @user = User.find_or_create_by(email: token_data['email']) do |u|
        u.name = token_data['cognito:username']
      end
    end
    
    if @user
      return true
    else
      return false
    end
  end
  
  def render_unauthorized(realm = "Application")
    self.headers["WWW-Authenticate"] = %(Token realm="#{realm}")
    render json: 'Bad credentials', status: :unauthorized
  end
end
