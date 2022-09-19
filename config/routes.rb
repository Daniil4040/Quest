Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "pages#index" 
  get "/questions", to:"questions#index"
  get "/questions/new", to:"questions#new"
  get "/films", to:"films#index"
  get "/films/new", to:"#films#new"
  get "/cinema", to:"cinema#index"
  get "/cinema/new", to:"cinema#new"
end
