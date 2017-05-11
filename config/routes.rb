Rails.application.routes.draw do
resources :line_items
resources :carts
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
