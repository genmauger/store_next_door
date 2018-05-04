Rails.application.routes.draw do
  resources :profiles
  devise_for :users, controllers: { registrations: "registrations" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#index'

  get '/profiles/create', to: 'profiles#create'

end
