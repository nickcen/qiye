Rails.application.routes.draw do
  devise_for :workers
  
  resources :workers do 
    member do 
      get :reset_password
    end
  end
  resources :roles
end
