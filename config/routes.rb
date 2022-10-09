Rails.application.routes.draw do
  root to: 'pages#home'
  get 'offres', to: 'pages#offers'
  get 'contact', to: 'pages#contact'
end
