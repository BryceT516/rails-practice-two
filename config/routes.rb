Rails.application.routes.draw do
  root controller: :rooms, action: :index

  resources :games, only: [:index, :create]

  resources :conversations, only: [:index, :create]
  resources :messages, only: [:create]

  mount ActionCable.server => '/cable'
  
  resources :room_messages
  resources :rooms

  scope module: 'api' do
    namespace :v1 do
      resources :users
      resources :facts
    end
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
