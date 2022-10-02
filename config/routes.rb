Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "pages#index"
  resources :questions
  # get "/questions", to:"questions#index"
  # get "/questions/new", to:"questions#new"
  # get "/questions/:id/edit", to:"questions#edit"
  # post "/questions", to:"questions#create"

  resources :films
  # get "/films", to:"films#index"
  # get "/films/new", to:"films#new"
  # get "/films/:id/edit", to: "films#edit"
  # post "/films", to:"films#create"
  # post "/films/:id/edit", to:"questions#edit"


  resources :cinemas
  # get "/cinemas", to:"cinemas#index"
  # get "/cinemas/new", to:"cinemas#new"
  # post "/cinemas", to:"cinemas#create"
end
