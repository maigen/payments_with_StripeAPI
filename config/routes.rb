Rails.application.routes.draw do
  root to: 'nonprofits#index'

  resources :nonprofits
  resources :payments
end
