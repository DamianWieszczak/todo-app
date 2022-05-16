Rails.application.routes.draw do
  
  resources :todo_lists do
    resources :todo_elements
  end

  root 'todo_lists#index'
  get 'about', to: 'about#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
