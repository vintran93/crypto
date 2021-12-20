Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'home/about'
  get 'home/search'
  post '/home/search' => 'home/search'
  root 'home#index'
  

end
