Rails.application.routes.draw do
  resources :event_category_lists
  
  # scope 'events', as: 'events' do
  #   root 'events#index'
  # end


  # get '/events/new', to: 'events#new'
  # get '/events/:id', to: 'events#show'
  # get '/events/:id/edit', to: 'events#edit'
  # post '/events', to: 'events#create'
  # post '/events/:id', to: 'events#update'

  resources :events

  get 'sessions/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/chat_room/:id', to: 'chat_rooms#show'
end
