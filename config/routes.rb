Rails.application.routes.draw do
  resources :services do
  	collection do
  	  get :search
  	end
  end


  root to: 'lawyers#index'
  
  resources :lawyers do
  	collection do
  	  get :search
  	end
  end
end
