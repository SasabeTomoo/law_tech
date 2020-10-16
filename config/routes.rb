Rails.application.routes.draw do
  resources :damages
  get 'adjustments/index'
  get '/pdf-download', to: 'pdf#download', as: 'pdf_download', :format => 'pdf'
  resources :samples do
    collection { post :import }
  end
end
