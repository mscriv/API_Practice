Rails.application.routes.draw do

  resources :agents
  resources :movies

  root 'movies#index'
end
