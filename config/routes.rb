Rails.application.routes.draw do
  root to: 'explains#top'
  # get   'explain1'は、HTTPメソッドのGETとURL指定
  get   'explain1', to: 'explains#explain1'
  get   'explain2', to: 'explains#explain2'
  get   'explain3', to: 'explains#explain3'
  get   'explain4', to: 'explains#explain4'
  get   'questions', to: 'explains#questions'
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
  resources :damages
  resources :adjustment_steps, only: [:index, :show, :update]
  resources :adjustments do
    collection do
      post :confirm
    end
  end
  get   'second', to: 'adjustments#second'
  get   'third', to: 'adjustments#third'
  get   'fourth', to: 'adjustments#fourth'
  get   'fifth', to: 'adjustments#fifth'
  # get   'input1', to: 'adjustments#input1'
  # get   'input2', to: 'adjustments#input2'
  resources :transactions
  get '/pdf-download', to: 'pdf#download', as: 'pdf_download', :format => 'pdf'
  resources :samples do
    collection { post :import }
  end
  namespace :admin do
    resources :users
  end
end
