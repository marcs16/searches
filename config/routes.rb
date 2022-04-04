Rails.application.routes.draw do
  get 'welcome/home'
  #for users wiews
  get 'users', to: 'users#index'
  

  
  #devise routes
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  # handle the root path for users
  root 'welcome#home'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
