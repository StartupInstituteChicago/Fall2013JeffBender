Fall2013JeffBender::Application.routes.draw do
  
 
  resources :restaurants
  get '/restaurants', to: 'restaurants#index'

  root to: "restaurants#index"

  devise_for :owners, path_names: {sign_in: "login", sign_out: "logout"}
end
