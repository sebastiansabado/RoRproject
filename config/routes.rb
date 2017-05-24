Rails.application.routes.draw do
  get 'actors/index'

  get 'sessions/new'

  get 'users/new'

  get 'favorites/foods'

  get 'favorites/movies'
  
 #Homework Actors Section
 get '/actors', to: "actors#index"
 get '/actors/new', to: "actors#new"
 post '/actors/create', to:"actors#create"
 get '/actors/:id/edit', to:"actors#edit"
 get '/actors/:id', to: "actors#show"
 patch '/actors/:id', to: "actors#update"
 delete '/actors/:id', to: "actors#delete"
 
 
 #Class work section : MOVIES 
  get '/movies', to: "movies#index", as: "movies"
  get '/movies/new', to:"movies#new"
  post '/movies/create', to:"movies#create"
  get '/movies/create', to:"movies#create" 
  get '/movies/:id', to: "movies#show"
  get '/movies/:id/edit', to:"movies#edit"
  patch '/movies/:id', to: "movies#update"
  delete '/movies/:id', to: "movies#delete"
  

  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/signup',  to: 'users#new'
  get  '/login',   to: 'sessions#new'
  post '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  
end
