Rails.application.routes.draw do
resources :line_items
resources :locations do
  resources :carts
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
