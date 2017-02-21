Rails.application.routes.draw do
  devise_for :users

  resources :products do
    resources :comments, shallow: true, only: [:create, :update, :destroy]
  end

  root to: "products#home"
end
