Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :models
  match '/shop',    to: 'static_pages#shop',    via: 'get'
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'
  match '/add_car', to: 'static_pages#add_car', via: 'get'
  match '/profile_info', to: 'static_pages#profile_info', via: 'get'
  

 root 'static_pages#home'
end
