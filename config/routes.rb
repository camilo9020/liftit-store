Rails.application.routes.draw do

  root 'subscribers#new'
  resources :subscribers
  get 'admin' => 'admin/dashboard#index'
  devise_for :admins

  namespace :admin do
    resource :dashboard, only: [:index]
    get 'show_subscribers' => 'dashboard#show_subscribers'
    resources :prizes, only: [:show, :new, :create, :edit, :update, :destroy]

  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
