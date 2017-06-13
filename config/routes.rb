Rails.application.routes.draw do
  resources :todos
  resources :lists do
    resources :tasks
  end

  resources :tasks do
  end

  resources :todos
  root 'todos#index'
end

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
