Rails.application.routes.draw do
  get 'tag_artworks/create'

  devise_for :users
  root to: "pages#home"
  resources :events
  resources :artworks
  resources :tags


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
