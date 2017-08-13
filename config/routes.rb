Rails.application.routes.draw do

  root 'examples#index'

  authenticated :user do
    resources :pages, :examples, only: [:new, :create, :edit, :update, :destroy]
  end

  resources :examples, only: [:index]

  resources :pages, only: [:show]

  mount Ckeditor::Engine => '/ckeditor'
  
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
