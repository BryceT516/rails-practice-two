require 'rails_helper'

RSpec.describe Authentication::TokenAuthenticator do
  let(:dummy_class) { Class.new{ extend Authentication::TokenAuthenticator }}
  let(:token) { File.read('spec/fixtures/jwt_token_fixture.json.erb')}
  let(:user) { create(:user, name: "test user", email: "bryce.tucker@gmail.com") }

  describe '#authenticate_token' do
    it 'returns true when a user can be found' do
      expect(dummy_class.authenticate_token(token)).to be_truthy
    end
  end
end