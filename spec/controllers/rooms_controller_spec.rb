require 'rails_helper'

RSpec.describe RoomsController, type: :controller do
  describe '#index' do
    before do
      stub_authentication
    end

    it 'works' do
      get :index
      expect(response.status).to be 200
    end
  end
end
