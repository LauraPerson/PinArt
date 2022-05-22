Rails.application.routes.draw do
  get 'artworks/new'
  get 'artworks/index'
  get 'artworks/show'
  get 'events/new'
  get 'events/index'
  get 'events/show'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
