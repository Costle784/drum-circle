Rails.application.routes.draw do
  devise_for :users
  root to: 'jamposts#index'

  resources :jamposts do
    resources :comments
    resources :instruments
  end
end
