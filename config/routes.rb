Rails.application.routes.draw do
  resources :cars, only: %w[index edit]
end
