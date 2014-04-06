Rails.application.routes.draw do
  root to: 'lawyers#index'
  
  resources :lawyers
end
