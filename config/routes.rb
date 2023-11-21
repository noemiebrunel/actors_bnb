Rails.application.routes.draw do
  devise_for :users
  root to: "actors#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  resources :actors do
    resources :bookings, except: [:index, :destroy, :show]
  end
  resources :bookings, only: [:destroy]
  # route perso pour accepter et decliner un booking
  get "dashboards", to: "dashboards#dashboards"
  # Defines the root path route ("/")
  # root "posts#index"
end
