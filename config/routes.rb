Rails.application.routes.draw do
resources :line_items
resources :carts
resources :states do
  resources :cities do
    resources :drugs do
      collection do
        get 'search'
        get :autocomplete_drug_name
      end
      resources :drug_stores
    end
  end
end
get 'pages/about'
root 'pages#home'

end
