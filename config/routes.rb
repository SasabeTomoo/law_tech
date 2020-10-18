Rails.application.routes.draw do

  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
  resources :damages
  # resources :adjustment_steps, only: [:index, :show, :update]
  resources :adjustments do
    collection do
      get 'step1'
      get 'step2'
    end
  end
  resources :transactions
  get '/pdf-download', to: 'pdf#download', as: 'pdf_download', :format => 'pdf'
  resources :samples do
    collection { post :import }
  end
end
