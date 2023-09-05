Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :jobs, only: [ :new, :create, :show, :create, :edit, :destroy ]
  resources users:, only: [ :show, :edit]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
