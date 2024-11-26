Rails.application.routes.draw do
  devise_for :users
  root to: "special_offers#index"
  resources :special_offers, only: [:show, :new, :create, :update] do
    resources :reviews, only: [:new, :create]
  end
  resources :special_offers, only: [:destroy]
  resources :reviews, only: [:update, :destroy]
end
