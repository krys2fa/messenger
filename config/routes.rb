Rails.application.routes.draw do
  resources :messages
  resources :accounts
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  root :to => "dashboard#index"
end
