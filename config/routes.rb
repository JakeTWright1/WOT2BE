Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :jobs, only: [ :new, :create, :show, :create, :edit, :destroy ] do
    resources :industries, only: [:show]
  end
  resources :users, only: [ :show, :edit] do
    resources :favourites, only: [:create, :destroy, :index ]
  end
end
