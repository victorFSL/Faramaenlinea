Rails.application.routes.draw do

  resources :drugs do
    collection do
      get 'search'
    end
    resources :drug_stores
  end


  get 'pages/home'
  get 'pages/about'

  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
