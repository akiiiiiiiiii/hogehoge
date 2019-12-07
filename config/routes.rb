Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'
    }

  devise_scope :user do
    get "user/:id", :to => "users/registrations#show"
    get "signup", :to => "users/registrations#new"
    get "login", :to => "users/sessions#new"
    get "logout", :to => "users/sessions#destroy"
    get "edit", :to => "users/registrations#profile_edit"
    patch "update", :to => "users/registrations#profile_update"
  end

  resources :books do
    resources :impressions, :only => [:create, :destroy]
  end

  root 'books#index'

end
