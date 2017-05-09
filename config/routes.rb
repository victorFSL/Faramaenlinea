Rails.application.routes.draw do
  resources :drug_store_locations
  resources :line_items, :carts
  resources :locations do
    resources :drugs do
      collection do
        get :autocomplete
      end
      resources :drug_stores
    end
  end
get 'pages/about'
root 'pages#home'

end
