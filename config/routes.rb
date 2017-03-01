Rails.application.routes.draw do

  resources :drugs
  resources :drug_stores

  get 'pages/home'
  get 'pages/about'

  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
