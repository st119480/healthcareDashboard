Rails.application.routes.draw do
  get 'main/index'

  #resources :specialties
  #devise_for :users
  devise_for :users, :controllers => { registrations: 'registrations' }


  #devise_for :users


  resources :tests
  resources :users
  root 'main#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
