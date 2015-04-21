Rails.application.routes.draw do
  resources :songs
  resources :users
  resources :stores do
    resources :items
  end

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
