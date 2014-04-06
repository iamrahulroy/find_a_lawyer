Rails.application.routes.draw do
  resources :services

  root to: 'lawyers#index'
  
  resources :lawyers
end
