Rails.application.routes.draw do
    devise_for :users
    
    devise_scope :user do
        authenticated :user do
            root 'posts#index', as: :authenticated_root
        end

        unauthenticated do
            root 'devise/sessions#new', as: :unauthenticated_root
        end
    end

    # root "posts#index"

    resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
