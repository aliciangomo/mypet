Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "pages#home"

  resources :products do
    resources :photos, only: [:create, :index, :new]
    resources :reviews, only: [:new, :create]
  end

  resources :orders, only: [:create, :update] do
    resources :order_items
  end

  resources :photos, only: [:destroy]
end
