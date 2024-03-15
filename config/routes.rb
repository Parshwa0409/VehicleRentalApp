Rails.application.routes.draw do

  root 'home#index'

  post 'ciucrv', to: 'user#check_if_user_can_rent'

  get "up" => "rails/health#show", as: :rails_health_check

end
