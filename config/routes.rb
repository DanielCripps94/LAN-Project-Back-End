Rails.application.routes.draw do

  # verb '/endpoint', to: 'controller#method'
  
  post '/signin', to: 'users#signin'
  post '/signup', to: 'users#signup'
  get '/validate', to: 'users#validate'
  get '/userevents', to: 'users#user_events'
  get '/events', to: 'events#index'
  delete '/userevents/:id', to: 'events#destroy'

end
