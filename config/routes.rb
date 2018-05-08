Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :animes, only: [:index, :show]
  resources :casts, only: [:index, :show]
  resources :production_companies, only: [:index, :show]
  resources :towatches
  resources :users
  resources :watcheds
  resources :watchings
end
