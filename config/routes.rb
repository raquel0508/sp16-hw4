Rails.application.routes.draw do
  resources :dogs

  get '/dogs', to: 'dogs#index'
  get 'dogs/:id', to: 'dogs#show'
  get '/dogs/new', to: 'dogs#new'
  post "dogs", to: "dogs#create"
  
end
