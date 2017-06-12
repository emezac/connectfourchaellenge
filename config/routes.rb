Rails.application.routes.draw do

  get  'play' => "home#play"
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
