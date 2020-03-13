module Authentication
  module TokenAuthenticator

    IDP_JWKS_URL = 'https://cognito-idp.us-west-2.amazonaws.com/us-west-2_q9IkW7VmH/.well-known/jwks.json'

    def authenticate_token(token)
      decode_token(token)
      @user = User.find_or_create_by(email: @decoded_token['email']) do |u|
        u.name = @decoded_token['cognito:username']
      end
      @user.present?
    end

    private

    def decode_token(token)
      @decoded_token ||= JSON::JWT.decode token, key_set
    end

    def key_set
      JSON::JWK::Set.new(
        JSON.parse(
          RestClient.get(IDP_JWKS_URL)
        )
      )
    end
  end
end