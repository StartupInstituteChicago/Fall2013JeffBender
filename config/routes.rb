Fall2013JeffBender::Application.routes.draw do
  
  
  resources :restaurants

  root to: "restaurants#index"

  devise_for :owners, path_names: {sign_in: "login", sign_out: "logout"}
end
