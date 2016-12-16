Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/creatures' => 'creatures#index', as: 'creatures'
  get '/creatures/new' => 'creatures#new', as: 'new_creature'
  post '/creatures' => 'creatures#create'
  get '/creatures/:id' => 'creatures#show', as: 'creature'
  get '/creatures/:id/edit' => 'creatures#edit', as: 'edit_creature'
  put '/creatures/:id' => 'creatures#update'
  patch '/creatures/:id' => 'creatures#update'
  delete '/creatures/:id' => 'creatures#destroy'

end
