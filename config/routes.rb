Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :jobs, only: [ :new, :create, :show, :create, :edit, :destroy ]
  resources :users, only: [ :show, :edit] do
    resources :favorites, only: [:create, :destroy]
  end
end
