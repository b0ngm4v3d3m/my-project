Rails.application.routes.draw do
  get 'password_resets/new'
  get 'password_resets/edit'
  get '/login', to:'sessions#new'
  get '/home', to:'static_pages#home'
  get '/help', to:'static_pages#help'
  get 'contact', to:'static_pages#contact'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root  to: 'static_pages#home'
  get '/signup', to: 'users#new'
  resources :users
  post '/login',to: 'sessions#create'
  delete '/logout',to: 'sessions#destroy'
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets, only: [:new, :create, :edit, :update]
end
