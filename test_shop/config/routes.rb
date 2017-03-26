Rails.application.routes.draw do
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :cart_products, only: [:index, :new, :destroy]

  resources :orders, only: [:new, :index]

  resources :products do
    resources :comments, shallow: true, only: [:create, :update, :destroy]
  end

  root to: "products#home"
end
