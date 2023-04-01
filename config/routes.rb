Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :users, only: [:show] do
    resources :friendships, only: [:new, :create, :index, :destroy]
    resources :channels do
    resources :bookmarks, only: [:new, :create]
    end
  end

  resources :posts do
    resources :comments, only: [:index, :new, :create]
  end


  resources :comments, only: [:show] do
    resources :replies, only: [:index, :show, :new, :create ]
  end

end
