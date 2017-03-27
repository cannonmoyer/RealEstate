Rails.application.routes.draw do


	root 'static_pages#index'
	
get 'listings/admin_index', to: 'listings#admin_index', as: 'admin_listings'
get 'listings/:id/view_listing', to: 'listings#view_listing', as: 'view_listing'

  #get 'static_pages/listings', to: 'static_pages#listings', as: 'listings'

	resources :listings

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
