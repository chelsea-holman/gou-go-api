Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      post 'login', to: 'sessions#login', as: :login
      resources :spaces, only: [ :index, :show, :create, :destroy, :update ] do
        member do
          post 'toggle_favorite', to: 'spaces#toggle_favorite'
        end
      end
      resources :users, only: [ :index] do
        member do
          get 'profile'
        end
      end
    end
  # end
  end
end
