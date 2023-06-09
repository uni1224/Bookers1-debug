Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 devise_for :users
  root to: "home#top"
  get "home/about"=>"home#about"

  resources :books, only: [:index,:show,:edit,:create,:destroy,:update] do
  resources :book_comments, only: [:create, :destroy]
   resource :favorites, only: [:create, :destroy]
   
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 end
  resources :users, only: [:index,:show,:edit,:update]
 end