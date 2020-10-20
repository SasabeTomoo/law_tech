Rails.application.routes.draw do

  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
  resources :damages
  resources :adjustment_steps, only: [:index, :show, :update]
  resources :adjustments do
    collection do
      post :confirm
    end
  end
  resources :transactions
  resource :pdf, only: [] do
    get :sample
  end
  resources :samples do
    collection { post :import }
  end
end
