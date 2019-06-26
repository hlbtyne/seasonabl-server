Rails.application.routes.draw do
  resources :users, only: [:show, :create, :update]
  resources :foods, only: :index
  resources :shopping_list_items, only: [:index, :create, :destroy]

  post '/login', to: 'users#login'
  get '/validate', to: 'users#validate'
end
