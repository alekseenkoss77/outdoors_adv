BtlTomskNarujka::Application.routes.draw do

  get '/blog' => "posts#index", as: :posts
  get '/blog/:slug' => "posts#show", as: :post

  get '/yslygi' => "services#index", as: :services
  get '/yslygi/:slug' => "services#show", as: :service

  resources :portfolio, only: [:index, :show]
  resources :contacts,  only: [:index]
  resources :orders,    only: [:create]

  mount Ckeditor::Engine => '/ckeditor'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'home#index'
end
