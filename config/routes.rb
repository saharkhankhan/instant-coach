Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users, controllers: { registrations: :registrations }

  resources :users do
      resources :sessions
      resources :bookings
      resources :user_sports do
        resources :sports, only: [:index, :show, :create, :new]
      end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
