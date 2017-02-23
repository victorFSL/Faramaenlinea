Rails.application.routes.draw do
  resources :drug_stores
  resources :drugs
  get 'pages/home'

  get 'pages/about'

  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
