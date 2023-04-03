Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

      resources :users, only: [:index, :show] do
      resources :friendships, only: [:index, :new, :create, :destroy]
      end

      resources :channels, :shallow => true do
      resources :bookmarks, only: [:new, :create, :destroy]
      resources :likes, only: [:index, :new, :create]
        resources :posts, :except => [:edit, :update] do
        resources :likes, only: [:index, :new, :create]
          resources :comments, only: [:index, :show, :new, :create, :destroy] do
          resources :likes, only: [:index, :new, :create]
            resources :replies, only: [:index, :new, :create, :destroy] do
            resources :likes, only: [:index, :new, :create]
            end
          end
       end
     end
     resources :likes, only: [:destroy]

end
