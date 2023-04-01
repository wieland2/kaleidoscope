Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :users, only: [:show] do
    resources :friendships, only: [:new, :create, :index, :destroy]
    resources :channels  do
    resources :bookmarks, only: [:new, :create]
    end
  end

  resources :posts, only: [:index, :new, :create] do
    resources :comments, only: [:index, :new, :create]
  end


  resources :comments, only: [:show] do
    resources :replies, only: [:index, :new, :create ]
  end

  resources :likes, only: [:index, :new, :create]

  resources :posts, only: [:show, :destroy]
  resources :likes, only: [:destroy]
  resources :comments, only: [:destroy]
  resources :replies, only: [:destroy]
  resources :bookmarks, only: [:destroy]
end
