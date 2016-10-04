Rails.application.routes.draw do
  resources :dis_doseunits
  resources :dis_doseform_route_maps
  resources :dis_generic_hepatic_imps
  resources :dis_duplicate_therapies
  resources :dis_doseform_doseunit_links
  resources :dis_dispensable_generics
  resources :dis_vaccine_types
  resources :dis_additive_frequencies
  resources :dis_doseperiods
  resources :dis_doseperiods
  resources :dis_drug_drug_interactions
  resources :dis_routed_doseform_generics
  resources :dis_doseunit_convertions
  resources :dis_generic_alcohol_interactions
  resources :dis_nfi_schedules
  resources :dis_generic_lactations
  resources :dis_generic_monographs
  resources :dis_generic_contraceptive_interactions
  resources :dis_alcohol_interactions
  resources :dis_datasources
  resources :dis_brandnames
  resources :dis_doseforms
  resources :dis_durations
  resources :dis_foodintakes
  resources :dis_generics
  resources :dis_generic_indications
  resources :dis_indiastates
  resources :dis_indications
  resources :dis_ingredients
  resources :dis_manufacturers
  resources :dis_packagetypes
  resources :dis_pregnancy_categories
  resources :dis_routes
  resources :dis_routed_generics
  resources :dis_statuses
  resources :dis_systems
  resources :dis_therapueticgroups
  namespace :api, defaults: {format: 'json'} do
  namespace :v1 do
     resources :combination_doses
     resources :combination_contents
     resources :dis_generics
     resources :dis_additive_frequencies
     resources :dis_alcohol_interactions
     resources :dis_brandnames
     resources :dis_datasources
     resources :dis_dispensable_generics
     resources :dis_doseform_doseunit_links
     resources :dis_doseform_route_maps
     resources :dis_doseforms
     resources :dis_doseperiods
     resources :dis_doseunit_convertions
     resources :dis_doseunits
     resources :dis_drug_drug_interactions
     resources :dis_duplicate_therapies
     resources :dis_durations
     resources :dis_foodintakes
     resources :dis_generic_alcohol_interactions
     resources :dis_generic_contraceptive_interactions
     resources :dis_generic_hepatic_imps
     resources :dis_generic_indications
     resources :dis_generic_lactations
     resources :dis_generic_monographs
     resources :dis_indiastates
     resources :dis_indications
     resources :dis_ingredients
     resources :dis_manufacturers
     resources :dis_nfi_schedules
     resources :dis_packagetypes
     resources :dis_pregnancy_categories
     resources :dis_routed_doseform_generics
     resources :dis_routed_generics
     resources :dis_routes
     resources :dis_statuses
     resources :dis_systems
     resources :dis_therapueticgroups
     resources :dis_vaccine_types
     get '/search', to: 'dis_generics#search', as: 'search'
   end
 end
  resources :combination_doses
  resources :combination_contents
  resources :tests
  devise_for :users
  get 'static_pages/home'

  get 'static_pages/help'
  root 'static_pages#home'

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
