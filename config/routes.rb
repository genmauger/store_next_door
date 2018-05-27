Rails.application.routes.draw do
  resources :storage_facilities do 
    resources :facility_spaces do
      resources :bookings
    end
  end
  resources :facility_spaces
  resources :profiles
  resources :charges
  devise_for :users, controllers: { registrations: "registrations" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  authenticated :user do
    root to: 'pages#index', as: :authenticated_root
  end

  root to: 'pages#index'

end
