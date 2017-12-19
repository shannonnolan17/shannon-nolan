Rails.application.routes.draw do
  devise_for :users

  resources :topics

  root to: 'topic#index'
end
