Rails.application.routes.draw do
  resources :controllers
  get 'users/new'
  get '/home', to:'static_pages#home'
  get '/help', to:'static_pages#help'
  get 'contact', to:'static_pages#contact'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root  to: 'static_pages#home'
  get '/signup', to: 'users#new'
  resources :users
end
