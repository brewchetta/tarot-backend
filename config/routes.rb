Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :positions
      resources :card_unlocks
      get '/spreads/get-by-user', to: 'spreads#show_by_user'
      resources :spreads
      resources :users
      resources :cards
      resources :notes
      # For authorized actions
      post '/login', to: 'auth#create'
      # To find a user by their username
      get '/profile', to: 'auth#show_by_name'
    end
  end
end
