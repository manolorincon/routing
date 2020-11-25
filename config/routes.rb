Rails.application.routes.draw do
  resources :stops
  resources :routes
  resources :vehicles
  resources :drivers
  resources :comunas
  
  root 'routes#index'

  resources :routes do
    resources :stops, only: [:create, :destroy, :update, :show]
  end

end
