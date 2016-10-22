Rails.application.routes.draw do

  root 'pages#index'
  resources :subscribers
  get 'admin' => 'admin/dashboard#index'
  devise_for :admins

  namespace :admin do
    resource :dashboard, only: [:index]

  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
