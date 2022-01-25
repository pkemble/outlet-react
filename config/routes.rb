Rails.application.routes.draw do
  devise_for :users

  namespace :api do
    namespace :v1 do
      get 'posts/index'
      post 'posts/create'
      delete 'posts/:id', to: 'posts#destroy'
    end
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "posts#index"

end
