module AuthenticationHelper
  def stub_authentication
    allow(ActionController::HttpAuthentication::Token).to receive(:authenticate).and_return(true)
  end
end