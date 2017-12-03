Rails.application.routes.draw do
  devise_for :workers
  
  resources :workers do 
    member do 
      get :reset_password
      put :change_current_city
    end
  end
  resources :roles

  resources :categories do 
    resources :products
    member do 
      get :prices
      post :init_prices
    end
  end

  resources :prices

  resources :price_rules

  resources :stations do 
  end

  resources :addresses do 
    collection do 
      get :suggestion
    end
  end

  resources :cities

  resources :couriers

  resources :messages, only: [:index]

  resources :orders do 
  end

  resources :users do 
    resources :user_cards do 
      member do 
        get :charge
        post :charge
      end
    end
  end

  mount ActionCable.server => '/cable' 

  root to: 'workers#signin'
end
