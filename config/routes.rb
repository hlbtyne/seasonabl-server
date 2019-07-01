Rails.application.routes.draw do
  resources :users, only: [:index, :show, :create, :update]
  resources :foods, only: [:index, :show]
  resources :shopping_list_items, only: [:index, :show, :create, :destroy]
  resources :recipes, only: [:index, :show]
  resources :user_recipes, only: [:index, :show, :create, :destroy]
  resources :months, only: [:index, :show]

  post '/login', to: 'users#login'
  get '/validate', to: 'users#validate'
end
