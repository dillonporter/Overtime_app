Rails.application.routes.draw do
  resources :audit_logs, except: [:new, :edit, :destroy]
  namespace :admin do
    resources :posts
    resources :users
    resources :admin_users

    root to: "users#index"
  end

  devise_for :users, skip: [:registrations]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :posts do
      member do
        get :approve
      end
    end

  root to: 'static#homepage'
end
