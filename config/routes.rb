RubyRails4Sample::Application.routes.draw do
  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  get 'home/index'
  get 'administrar/index'
  get 'administrar/iglesia'
  post 'administrar/iglesia' => 'administrar#create'
  get 'administrar/red' => 'administrar#rednew'
  post 'administrar/red' => 'administrar#redsave'
  get 'administrar/redes' => 'administrar#redlista'
  get 'administrar/redmapa' => 'administrar#redmapa'
  get 'administrar/rol' => 'administrar#roles'
  get 'administrar/usuario' => 'administrar#usuario'
  get 'administrar/asistencia' => 'administrar#asistculto'
  get 'administrar/reporteas' => 'administrar#reporteasist'

  get 'ganar/registro' => 'ganar#registro'
  get 'ganar/configurar' => 'ganar#configurar'
  get 'ganar/busqueda' => 'ganar#busqueda'
  get 'ganar/informe' => 'ganar#informe'
  get 'ganar/reporte' => 'ganar#reporte'
  post 'ganar/lugar' => 'ganar#lugar_create'
  post 'ganar/escivil' => 'ganar#es_create'
  post 'ganar/regla' => 'ganar#regla_create'

  get 'consolidar/consolidador' => 'consolidar#consolidador'

  
  root 'home#index'
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
