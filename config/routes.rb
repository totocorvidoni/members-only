Rails.application.routes.draw do
  root 'static_pages#home'
  # resources :sessions, only: [:new, :create, :destroy]
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
