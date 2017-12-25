Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :models
  resources :categories, only:[:index,:show,:edit,:update]
  resources :products, only:[:show,:edit,:update]
  resources :orders, only:[:index,:update,:destroy]


  match '/shop',    to: 'static_pages#shop',    via: 'get'
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'
  match '/add_car', to: 'static_pages#add_car', via: 'get'
  match '/profile_info', to: 'static_pages#profile_info', via: 'get'
  
  post 'orders/:id', to:'orders#create'
  get 'orders/minus/:id', to:'orders#minus', as:'minus'
  get 'orders/plus/:id', to:'orders#plus', as:'plus'
  get 'orders/confirm', to:'orders#confirm', as:'confirm'

 root 'static_pages#home'
end
