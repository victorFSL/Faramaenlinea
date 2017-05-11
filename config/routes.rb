Rails.application.routes.draw do
resources :line_items, only: [:create, :update, :destroy]
resources :carts, only: [:show, :create, :update, :destroy]
resources :locations, only: [:show] do
  resources :drugs, only: [:index, :show] do
    collection do
      get :autocomplete
    end
    resources :drug_stores
  end
end
get 'pages/about'
root 'pages#home'

end
