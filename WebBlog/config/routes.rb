Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  resources :blogs

  root to: "blogs#index"
end
