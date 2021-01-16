# Rails.application.routes.draw do
#   devise_for :users
#   root to: "users#index"
# end

Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  root :to => "users#sign_in"
end
