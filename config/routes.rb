Rails.application.routes.draw do

  root to: 'pages#show', id: 'home'

  devise_for :users, path: 'user' , controllers: { sessions: "user/sessions", passwords: "user/passwords" }
  devise_for :admins, path: 'user' , controllers: { sessions: "user/sessions", passwords: "user/passwords" }
  devise_for :owners, path: 'user' , controllers: { sessions: "user/sessions", passwords: "user/passwords" }
  devise_for :customers, path: 'user' , controllers: { sessions: "user/sessions", passwords: "user/passwords" }

  # namespace :admin do
  #   resources :categories
  #   resources :tags, only: [:index]
  #   resources :regions, only: [:index]
  #   resources :brregs, only: [:index], defaults: { format: 'json' }
  #   resources :yayimages, only: [:index], defaults: { format: 'json' }
  #   resources :sites, only: [:index, :edit, :update, :show] do
  #     resources :photos
  #     resources :logos
  #     get '/:page', to: 'sites#edit', as: :page, on: :member
  #     resources :pages do
  #       collection { post :sort }
  #     end
  #   end

  #   get 'call', to: 'calls#call'

  #   scope "/:site" do
  #     resources :users do
  #       resources :voip_accounts, only: [:update]
  #     end
  #     resources :listings, except: [:edit] do
  #       resources :customers
  #       resources :photos
  #       resources :comments
  #       get '/:page', to: 'listings#edit', as: :page, on: :member
  #     end
  #     resources :prospects, only: [:index, :show, :update] do
  #       get 'scope/:scope', to: 'prospects#index', as: :scope, on: :collection
  #       resources :comments
  #       patch '/:state', to: 'prospects#update', as: :change_state, on: :member

  #       collection do
  #         namespace :multiple do
  #           post :edit
  #           post :update
  #         end
  #       end
  #     end
  #     resources :sellers do
  #       get :prospects, to: 'prospects#index'
  #     end
  #     resources :regions
  #     root to: "sites#show", as: :site_root
  #   end

  #   root to: "sites#index"
  # end

  # namespace :manage do
  #   resources :listings, except: [:edit] do
  #     resources :photos
  #     get '/:page', to: 'listings#edit', as: :page, on: :member
  #   end
  #   resources :tags, only: [:index]
  #   resources :regions, only: [:index]
  #   resources :yayimages, only: [:index], defaults: { format: 'json' }

  #   root to: "listings#index"
  # end

  # resources :categories, only: [:index] do
  #   get "categories", to: 'categories#index', on: :collection
  # end

  # resources :listings, only: [:index, :show] do
  #   get "search(/:query)(/page/:page)(/view/:view)", to: 'listings#index', as: :search, on: :collection, constraints: { query: /((?!\/page).)*|(\?utf8)+.*/  }
  # end

  # resources :maps do
  #   get "search(/:query)(/page/:page)", to: 'maps#index', as: :search, on: :collection
  # end

  # resources :regions, only: [:index, :show]

  # namespace :api, defaults: {format: 'json'}  do
  #   namespace :v1 do
  #     resources :listings, only: [:index, :show, :edit, :create] do
  #       member do
  #         put "(/:resource)", to: 'listings#update', :as => :update
  #       end
  #     end
  #     # put "listings/:id(/:resource)", to: 'listings#update'
  #     resources :regions, only: [:index]
  #     resources :photos
  #     resources :people, only: [:index, :create, :destroy]
  #     resources :connections, only: [:index, :create, :destroy]
  #     resources :addresses, only: [:index, :create, :destroy]
  #     resources :tags, only: [:index]
  #     resources :pages, only: [:index]
  #     devise_scope :user do
  #       resources :sessions, only: [:create, :destroy]
  #     end
  #     get 'search', to: 'listing_search#index', constraints: { query: /.+(\/.+)*/  }
  #   end
  # end

  # mount Sidekiq::Web => '/sidekiq'


end
