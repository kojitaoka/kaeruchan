Rails.application.routes.draw do
	devise_for :admins, path: 'admin/admins', controllers: {
	  sessions:      'admin/admins/sessions',
	  passwords:     'admin/admins/passwords',
	  registrations: 'admin/admins/registrations'
	}
	devise_for :users, controllers: {
	  sessions:      'user/users/sessions',
	  passwords:     'user/users/passwords',
	  registrations: 'user/users/registrations'
	}

	namespace :admin, path: 'admin' do
		root 'home#index', as: :root
		resources :items, only: [:new, :create]
	end

	namespace :user, path: 'user' do
		resources :items, only: [:index]
	end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
