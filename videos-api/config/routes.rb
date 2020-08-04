Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do

      resources :categories do
        resources :posts, only: [:index]
      end

      resources :series do 
        resources :posts, only: [:index]
      end

      resources :posts
      resources :series
      resources :categories
    end
  end
end
