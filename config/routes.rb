Rails.application.routes.draw do

  root 'examples#index'

  authenticated :user do
    resources :pages, :examples, only: [:new, :create, :edit, :update, :destroy]
  end

  resources :examples, only: [:index]

  resources :pages, only: [:show]

  mount Ckeditor::Engine => '/ckeditor'
  
  devise_for :users

end
