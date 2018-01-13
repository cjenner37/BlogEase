Rails.application.routes.draw do

  get 'posts/index'

  get 'posts/new'

  get 'posts/create'

  get 'posts/edit'

  get 'posts/show'

  get 'posts/update'

  get 'posts/destroy'

  get 'comments/index'

  get 'comments/new'

  get 'comments/create'

  get 'comments/edit'

  get 'comments/show'

  get 'comments/update'

  get 'comments/destroy'

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

  get 'home/index'


  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
