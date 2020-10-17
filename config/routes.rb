Rails.application.routes.draw do

  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
  resources :damages
  resources :adjustments do
    collection do
      post :confirm
    end
  end
  resources :transactions
  get '/pdf-download', to: 'pdf#download', as: 'pdf_download', :format => 'pdf'
  resources :samples do
    collection { post :import }
  end
end
