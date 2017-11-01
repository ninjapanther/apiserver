Rails.application.routes.draw do
  get 'sls/index'

  get 'sls/show'
root "sls#index"
  resources :sds
  resources :servdetails
  resources :sls
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
