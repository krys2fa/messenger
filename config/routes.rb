# Rails.application.routes.draw do
  resources :messages
  # resources :accounts
#   devise_for :users
#   root to: "users#index"
# end

Rails.application.routes.draw do
  resources :messages
  resources :accounts
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  root :to => "accounts#index"
end
