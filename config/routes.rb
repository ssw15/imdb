Rails.application.routes.draw do
  # Routes for the Role resource:
  # CREATE
  get '/roles/new',      :controller => 'roles', :action => 'new',    :as => 'new_role'
  post '/roles',         :controller => 'roles', :action => 'create', :as => 'roles'

  # READ
  get '/roles',          :controller => 'roles', :action => 'index'
  get '/roles/:id',      :controller => 'roles', :action => 'show',   :as => 'role'

  # UPDATE
  get '/roles/:id/edit', :controller => 'roles', :action => 'edit',   :as => 'edit_role'
  patch '/roles/:id',    :controller => 'roles', :action => 'update'

  # DELETE
  delete '/roles/:id',   :controller => 'roles', :action => 'destroy'
  #------------------------------

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
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
