Rails.application.routes.draw do
  root 'home#index'

  post 'ciucrv', to: 'user#check_if_user_can_rent'

  get 'sign_up', to: 'sign_up#new'
  post 'sign_up', to: 'sign_up#create'
  post 'sign_in', to: 'session#create'
  delete 'sign_out', to: 'session#destroy'

  get 'new_rental_agreement', to:'rental_agreement#new'
  post 'new_rental_agreement', to:'rental_agreement#create'
  get 'active_agreement', to:'user#active'
  post 'end_active_agreement', to:'user#return_car'
  get 'all_agreements', to: 'user#all_agreements'
  get 'profile', to: 'user#profile'
  get 'agreement_detail', to: 'rental_agreement#detail'

  get "up" => "rails/health#show", as: :rails_health_check

end
