Rails.application.routes.draw do

  resources :line_items
  resources :carts
  resources :drugs do
    collection do
      get 'search'
    end
    collection do
      get 'autocomplete'
    end
    resources :drug_stores
  end

  get 'pages/home'
  get 'pages/about'

  root 'pages#home'
end
