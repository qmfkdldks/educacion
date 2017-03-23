Rails.application.routes.draw do

  root 'home#index'
  resources :posts
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users, controllers: { sessions: 'users/sessions' }
  resources :donations
  get 'home/index', as: 'home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
