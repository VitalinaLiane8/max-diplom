Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  
  
  #match  'order_is_sectors/add/:user_id/:akey_start/:order_id',           to: 'order_is_sectors#add',                               via: 'get'  
  #patch  'order_is_sectors/update',                                       to: 'order_is_sectors#update'  
  #post   'order_is_sectors/end',                                          to: 'order_is_sectors#end'      
  #get    'order_is_sectors/info_page'
  
  
  
  get    'users/new'
  post   'users/find',                                                    to: 'users#find'      
  match  'users/income/:user_id/:key',                                    to: 'users#income',                          via: 'get'  
  
  
  get    'msgs/error'
  get    'msgs/success_created'
  
  
  match  'tests/all/:user_id/:key',                                       to: 'tests#all',                          via: 'get'
  match  'test/:user_id/:key/:test_id',                                   to: 'tests#index',                         via: 'get'    


  root 'users#new'
  match "*path",                                                          to: 'users#new',                             via: 'get'  
  
end
