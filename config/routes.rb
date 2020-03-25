Rails.application.routes.draw do
  devise_for :users
  resources :books
  resources :memos
  root 'books#index'
end
