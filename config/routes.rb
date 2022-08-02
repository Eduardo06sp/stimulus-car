Rails.application.routes.draw do
  root 'cars#index'

  resources :cars, only: %w[index edit]
end
