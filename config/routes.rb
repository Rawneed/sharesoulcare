ShareSoulCare::Application.routes.draw do
   
  get "resources/index"
  get "resources/show"
  get "resources/new"
  get "resources/edit"
  # get "resource/index"
  # get "resource/show"
  # get "resource/new"
  # get "resource/edit"
  get "profile/index"
  get "profile/update"
  devise_for :users
  resources :users
  resources :sessions
  # get "about/overview"
  # get "about/team"
  # get "about/contact"
  # get "groups/index"
  # get "groups/find"
  # get "groups/start"
  # get "groups/connect"
  resources :topics
  resources :inspirations
  resources :events
  resources :event_types
  resources :prayers
  resources :groups
# resources :tags

  resources :resources

  match '/logout', to: 'session#destroy', :as => 'logout', via: 'get'
  match '/login', to:  'session#new', :as => 'login', via: 'get'
  match '/sign-up', to: 'users#new', :as => "sign_up", via: 'get'

  match '/about/contact',to: 'about#contact', :as => :contact_about,  via: 'get'
  match '/about/overview', to: 'about#overview', :as => :overview_about,  via: 'get'
  match '/about/team', to: 'about#team', :as => :team_about,    via: 'get'

  match '/groups', to: 'groups#index', via: 'get'
  match '/groups/find-a-group',         to: 'groups#find', :as => :find_groups,     via: 'get'
  match '/groups/start-a-group',        to: 'groups#start', :as => :start_groups,   via: 'get'
  match '/groups/connect-with-a-group', to: 'groups#connect', :as => :connect_groups, via: 'get'
  
  get "inspirations/index"
   match '/resources/index', to: 'resources#index', via: 'get'  
#  match 'events/tags/:id' => 'events#tag', via: 'get', :as => :tags
   get 'topics/tags/:tag',  to: 'topics#index',  as: :tag 
#  get 'prayers/tags/:tag', to: 'prayers#index', as: :tag

# , ActiveAdmin::Devise.config
#  ActiveAdmin.routes(self)
#  devise_for :users
#  root "demo_pages#guest-home-page"
#  get "demo_pages/user-home-page"
#  get "demo_pages/admin-home-page"
#  get "demo_pages/profil-page"
#  get "demo_pages/events-page"
#  get "demo_pages/discussion-page"
  root 'topics#index'  

  resources :topics

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
