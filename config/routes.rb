Rails.application.routes.draw do
	resources :products
		resources :reviews, :only => [:show, :create, :destroy]
	resources :users, :only => [:new,:create] 
	resources :sessions, :only => [:new, :create, :destroy]
end

  