Rails.application.routes.draw do

  # verb '/endpoint', to: 'controller#method'
  
  post '/signin', to: 'users#signin'
  post '/signup', to: 'users#signup'
  get '/validate', to: 'users#validate'
  get '/userevents', to: 'users#user_events'
  get '/events', to: 'events#index'
  get '/usershostedevents', to: 'users#user_hosted_events'
  delete '/userevents/:id', to: 'events#destroy_ticket'
  delete '/userticket/:id', to: 'events#destroy_event'
  
  post '/tickets/new', to: 'tickets#create'
  post '/events', to: 'events#create'
  post '/comments/new', to: 'comments#create'
  get '/events/:id/comments', to: 'comments#get_event_comments'

end
