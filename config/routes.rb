Rails.application.routes.draw do
  get 'cards/search'
  resources :areaimages
  resources :areas
  resources :mapimages
  resources :maps
  resources :user_avatars
  devise_for :users, :controllers => { registrations: 'registrations' }
  get 'welcome/index'
  
  root 'welcome#index'
  
  get 'magic', to: "magic#index"
  get '/cards/search', to: 'cards#search'
  get '/cards/primal_vigor', to: 'cards#show'
  
  get 'react', to: "react#index"
  
  #resources :users, :only => [:index, :show, :destroy]
  resources :users
  
  #devise_for :users, :controllers => { registrations: 'my_devise/registrations' }
end
