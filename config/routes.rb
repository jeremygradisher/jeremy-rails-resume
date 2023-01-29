Rails.application.routes.draw do
  resources :areaimages
  resources :areas
  resources :mapimages
  resources :maps
  resources :user_avatars
  devise_for :users, :controllers => { registrations: 'registrations' }
  get 'welcome/index'
  
  root 'welcome#index'
  
  get 'magic', to: "magic#index"
  
  #resources :users, :only => [:index, :show, :destroy]
  resources :users
  
  #devise_for :users, :controllers => { registrations: 'my_devise/registrations' }
end
