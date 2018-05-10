Rails.application.routes.draw do
  resources :storage_facilities do 
    resources :facility_spaces
  end
  resources :facility_spaces
  resources :profiles
  resources :charges
  devise_for :users, controllers: { registrations: "registrations" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#index'

  # get '/profiles/create', to: 'profiles#create'

  #Redirect to personal index page showing all properties


end
