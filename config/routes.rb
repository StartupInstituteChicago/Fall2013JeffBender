RestaurantApp::Application.routes.draw do
  
    #verb url => controller#action
    get "/" => 'tables#welcome'
    get "/tables" => 'tables#index'
    get "/tables/:id" => 'tables#show'
    
  
  
  
  
  
  
  
  # Tority is based upon order of creation: first created -> highest priority.
  # S all your routes lay out with "rake routes".
     
  # Y have the root of your site routed with "root"
  # relcome#index'
     
  # E of regular route:
  #  products/:id' => 'catalog#view'
     
  # E of named route that can be invoked with purchase_url(id: product.id)
  #  products/:id/purchase' => 'catalog#purchase', as: :purchase
     
  # E resource route (maps HTTP verbs to controller actions automatically):
  #  rces :products
     
  # E resource route with options:
  #  rces :products do
  #  ber do
  #  et 'short'
  #  ost 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end
  
  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
