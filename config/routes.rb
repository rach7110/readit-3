Readit3::Application.routes.draw do
  # Devise gem creates the CRUD behind the scenes for the user model:
  devise_for :users

  # Resourceful route for pages ('pages' refer to webpages (ie: Home, About, etc.)
  resources :pages

  # Homepage:
  root to: "links#index"

  get '/links' => 'links#index', as: 'links'
  #new_link_path (links/new) OR new_link_url (http://readit.com/links/new)
  get '/links/new' => 'links#new', as: 'new_link' 
  post '/links' => 'links#create', as: 'links'

  get '/links/:id' => 'links#show', as: 'link_show'

  get '/links/:id/edit' => 'links#edit', as: 'link_edit'
  post '/links/:id/edit' => 'links#update'

  delete '/links/:id' => 'links#destroy', as: 'link_delete'


  
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
