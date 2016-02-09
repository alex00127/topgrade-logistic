Rails.application.routes.draw do


  root 'orders#index'

  resources :orders do
    resources :stops
  end 

end
