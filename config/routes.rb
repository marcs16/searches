Rails.application.routes.draw do
  get 'users/index'
  get 'users/search'
  #for users wiews
  get '/index', to: 'users#index'
  post '/search', to: 'users#search'
  #handling the login
  
  #devise routes
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  # handle the root path for users
  devise_scope :user do
    authenticated :user do
      root 'users#index', as: :authenticated_root
    end

    unauthenticated :user do
      root 'sessions#new', as: :unauthenticated_root
    end
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
