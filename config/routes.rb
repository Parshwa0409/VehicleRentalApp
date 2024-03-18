Rails.application.routes.draw do
  @root = ""

  get "admin_v", to:'admin#all_vehicles'
  get "admin_nv" , to:'admin#new_vehicle'
  post "admin_nv" , to:'admin#create_new_vehicle'
  get "admin_u", to: 'admin#all_users'
  get "search_u", to: 'admin#search_user'
  post "search_u", to: 'admin#search_from_users'
  get "search_v", to: 'vehicle#search'
  get "insights", to: 'admin#rental_insights'
  post "view_user", to: 'admin#view_user'
  get "view_user", to: 'admin#show_user'

  root "home#index"

  post 'ciucrv', to: 'user#check_if_user_can_rent'
  get 'profile', to: 'user#profile'

  get 'sign_up', to: 'sign_up#new'
  post 'sign_up', to: 'sign_up#create'
  post 'sign_in', to: 'session#create'
  delete 'sign_out', to: 'session#destroy'

  get 'new_rental_agreement', to:'rental_agreement#new'
  post 'new_rental_agreement', to:'rental_agreement#create'

  get 'active_agreement', to:'user#active'
  post 'end_active_agreement', to:'user#return_car'

  get 'all_agreements', to: 'user#all_agreements'
  get 'agreement_detail', to: 'rental_agreement#detail'

  get 'search', to: 'vehicle#search'
  post 'search', to: 'vehicle#search_vehicle'

  get "up" => "rails/health#show", as: :rails_health_check

end
