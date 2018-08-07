Rails.application.routes.draw do
  resources :event_category_lists
  get 'events/show'

  get 'events/index'

  get 'events/create'

  get 'events/update'

  get 'sessions/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/chat_room/:id', to: 'chat_rooms#show'
end
