require 'rails_helper'

RSpec.describe 'Games API', type: :request do
  let!(:games) { create_list(:game, 10) }
  let(:game_id) { games.first.id }
  let(:game_json_output) { {
    id: 0,
    title: "Game Title"
  } }
  let(:players) { create_list(:user, 5) }
  before do
    players.each do |player|
      games.first.join(player)
    end
  end
  before { stub_authentication }
  
  describe 'GET /v1/games' do
    before { get '/v1/games' }
    
    it 'returns games' do
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end
    
    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
    
    it 'returns the correct data' do
      expect(json[0]).to eq(game_json_output)
    end
  end
  
  
end