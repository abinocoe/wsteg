Rails.application.routes.draw do

  root 'examples#index'

  resources :examples, except: [:index, :show]

  resources :pages, except: [:index]

  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
