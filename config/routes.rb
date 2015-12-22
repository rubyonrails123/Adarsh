Rails.application.routes.draw do
  get 'sessions/new'

  get 'clients/new'
  get 'clients/edit'

  get 'teams/new'
  get 'teams/edit'

  get 'documents/new'
  get 'documents/edit'

  get 'users/new'
  get 'users/edit'

  get "log_in" => "sessions#new", :as => "log_in"
  get "log_out" => "sessions#destroy", :as => "log_out"
  get "sign_up" => "users#new", :as => "sign_up"
  post "documents/create" => "documents#create"


  match 'clients/:id/destroy' => "clients#destroy", :via => [:post,:get]
  match 'teams/:id/destroy' => "teams#destroy", :via => [:post,:get]
  match 'documents/:id/destroy' => "documents#destroy", :via => [:post,:get]
  match 'users/:id/destroy' => "users#destroy", :via => [:post,:get]

  resources :documents
  resources :sessions
  resources :teams
  resources :clients
  resources :users



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
