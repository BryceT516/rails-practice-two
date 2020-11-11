Rails.application.routes.draw do
  mount ActionCable.server => '/cable'

  scope module: 'api' do
    namespace :v1 do
      resource :user, only: [:show]
      resources :users
      resources :games do
        resource :game_turn, only: [:show]
        resources :game_turns, only: [:index, :show]
        
      end
      resources :participants
    end
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
