# frozen_string_literal: true

Rails.application.routes.draw do
  get 'movies/ListsController'
  get 'movies/BookmarksController'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'movies#index'
  resources :movies
end
