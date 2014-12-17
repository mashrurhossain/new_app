Rails.application.routes.draw do

  get  '/dogs', to: 'dogs#index'
  get '/dogs/new', to: 'dogs#new', as: 'new_dog' 
  post '/dogs', to: 'dogs#create' 
  get '/dogs/:id', to: 'dogs#show', as: 'dog'
  get '/dogs/:id/edit', to: 'dogs#edit', as: 'edit_dog'
  put '/dogs/:id', to: 'dogs#update'
  patch '/dogs/:id', to: 'dogs#update'
  delete '/dogs/:id', to: 'dogs#destroy'

end
