Rails.application.routes.draw do
  resources :cryptos
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'home/about'
  get 'home/search'
  post '/home/search' => 'home/search'
  #get '/cryptos/new', to: 'cryptos#new' as: 'new_crypto'
  root 'home#index'
  

end
