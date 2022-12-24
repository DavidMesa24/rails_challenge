Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # Define routes for the banks controller
  scope "/:locale" do
  root to: 'suppliers#index'
  resources :banks
  resources :suppliers
  end
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  end
