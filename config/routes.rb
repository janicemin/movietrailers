Rails.application.routes.draw do
  resources :movies do
    resources :trailers
  end

  resources :actors 

  post 'movies/search', to: 'movies#search'
end
