Rails.application.routes.draw do
  
  resources :products_substances
  resources :products_substances
  resources :products
  resources :presentations
  devise_for :users
  
  get 'help'    => 'static_pages#help'
  get 'about'   => 'static_pages#about'
  get 'newuser' => 'users#new'
  resources :clinics_people
  resources :clinics
  resources :specialties
  resources :people
  resources :cities
  resources :persontypes
  resources :person_types
  resources :products
  resources :medications
  resources :substances
  resources :categories
  resources :brands
  resources :presentations
  
  resources :users
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'static_pages#home'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase
  
  get 'products/:id/products_substances' => 'products_substances#index', as: :substances_index
  get 'products/:id/products_substances/new' => 'products_substances#new', as: :substances_new
  post 'products/:id/products_substances/new' => 'products_substances#create', as: :substances_create

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
  #     #   end
end
