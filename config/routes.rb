Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  root "web/homes#index"
  get "/about" => "web/homes#about"
  post "/franchies_contact", to: "web/homes#create", as: "franchies_contact"
  get "/states/:slug", to: "web/homes#state_detail", as: "state"
  get "/gallery", to: "web/galleries#index", as: "gallery"
  get "/blogs", to: "web/blogs#index", as: "blogs"
  get "/events", to: "web/events#index", as: "events"
  get "/detail", to: "web/homes#outlate_detail", as: "detail"
  get "/blog/detail", to: "web/blogs#detail", as: "blog/detail"
  get "/award", to: "web/awards#index", as: "award"
 get "/show", to: "web/events#show", as: "show"
 get "/contact_us", to: "web/homes#contact_us", as: "contact_us"
 get "/product/detail", to: "web/homes#product_detail", as: "product_detail"
  # namespace :web do
  #   namespace :homes do
      # resources :states, only: [:show], param: :slug
  #   end
  # end

end
