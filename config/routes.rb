Rails.application.routes.draw do
  root 'trips#index'

  devise_for :users
	devise_scope :user do
		get 'sign_in', to: 'devise/sessions#new'
		get 'sign_up', to: 'devise/registrations#new'
	end

  resources :trips
  resources :tickets, only: [:create, :destroy]



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
