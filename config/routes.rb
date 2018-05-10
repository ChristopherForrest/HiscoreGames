Rails.application.routes.draw do
  resources :games 
  resources :profiles
  devise_for :users, controllers: { registrations: "registrations" }
  root to: 'games#index'
  resources :charges
  
  resources :conversations do
    resources :messages
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
