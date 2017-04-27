Rails.application.routes.draw do
  root to: 'jamposts#index'

  resources :jamposts do
    resources :comments
    resources :instruments
  end
end
