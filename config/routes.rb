Rails.application.routes.draw do
  resources :lists do
    resources :tasks
  end

  resources :tasks do
    
  end
end

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
