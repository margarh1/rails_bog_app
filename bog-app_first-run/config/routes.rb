Rails.application.routes.draw do
  get 'creatures/index'

  get 'creatures/new'

  get 'creatures/create'

  get 'creatures/show'

  get 'creatures/edit'

  get 'creatures/update'

  get 'creatures/destroy'

  root 'creatures#index'

  get '/creatures' => 'creatures#index', as: 'creatures'
  get '/creatures/new' => 'creatures#new', as: 'new_creature'
  post '/creatures' => 'creatures#create'
  get '/creatures/:id' => 'creatures#show', as: 'creature'
  get '/creatures/:id/edit' => 'creatures#edit', as: 'edit_creature'
  put '/creatures/:id' => 'creatures#update'
  patch '/creatures/:id' => 'creatures#update'
  delete '/creatures/:id' => 'creatures#destroy'

end
