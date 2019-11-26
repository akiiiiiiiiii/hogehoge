Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books, only: [:create]
  root 'books#index'
  get 'books/new', to: 'books#new'
  post 'books/create', to: 'books#create'
end
