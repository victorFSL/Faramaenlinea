Rails.application.routes.draw do

  resources :search_suggestions
  resources :drugs do
    collection do
      get 'search'
    end

  end
  resources :drug_stores

  get 'pages/home'
  get 'pages/about'

  root 'pages#home'
end
