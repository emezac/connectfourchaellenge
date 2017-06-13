Rails.application.routes.draw do

  resources :games
  resources :players
  get  'play' => "home#play"
  get '/games/start/:id', to: 'games#start', as: 'start_game'
  get '/home/play/:move', to: 'home#play', as: 'playnewgame'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
