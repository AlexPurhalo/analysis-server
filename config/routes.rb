Rails.application.routes.draw do
  resource :sign_in, only: [:create], controller: :sessions, defaults: { format: :json }
  resources :users, only: [:create], defaults: { format: :json }
  root to: 'hello_message#index'
end
