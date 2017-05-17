Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/new'

  get 'favorites/foods'

  get 'favorites/movies'
  
  get '/movies', to: "movies#index", as: "movies"
  get '/movies/new', to:"movies#new"
  post '/movies/create', to:"movies#create"
  get '/movies/create', to:"movies#create" 
  get 'movies/:id', to: "movies#show"
  get 'movies/:id/edit', to:"movies#edit"
  patch '/movies/:id', to: "movies#update"

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
