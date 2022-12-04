Rails.application.routes.draw do
  root to: 'pages#home'
  get 'offres', to: 'pages#offers'
  get 'contact', to: 'contacts#new'
  get 'clients', to: 'pages#clients'
  resources :contacts, only: [:create]
end
