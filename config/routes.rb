Rails.application.routes.draw do
  resources :samples do
    collection { post :import }
  end
end
