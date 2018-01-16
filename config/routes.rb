Rails.application.routes.draw do



  resources :posts do 
    resources :comments
  end

  resources :comments do 
    resources :comments
  end

  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'
      }
  resources :users, only: [:show, :index]

  get 'home/index'
  get '/search_users', to: 'search#index'

  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
