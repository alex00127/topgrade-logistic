Rails.application.routes.draw do

  devise_for :users
  root 'orders#index'

  resources :orders do
    resources :stops

    member  do
    	get :calprice
    end

    collection  do
      get :service
    end

  end 

	namespace :admin do
	  resources :orders
	end

  get "test", :to => 'orders#test'

end
