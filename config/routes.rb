Rails.application.routes.draw do
 
  resources :community_tag_lists
  resources :event_category_lists
  
  # scope 'events', as: 'events' do
  #   root 'events#index'
  # end


  # get 'events/new', to: 'events#new'
  # get 'events/:id', to: 'events#show'
  # get 'events/:id/edit', to: 'events#edit'
  # # ,as: :edit_events
  # post 'events', to: 'events#create'
  # post 'events/:id/edit', to: 'events#update'
  

  resources :events, except: [ :destroy ] do
    member do
      get :fix, to: 'events#fix'
      patch :fix, to: 'events#fixed', as: 'fixed'
      get :participate, to: 'events#participate', as: 'participate'
    end
    collection do
    end
  end

  resource :event_users, only: [ :create, :update ]

  resources :event_messages, only: [ :create, :update ]

  get 'sessions/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users



  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/chat_room/:id', to: 'chat_rooms#show'
end
