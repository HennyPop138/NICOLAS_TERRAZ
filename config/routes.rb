Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'pages#home'
  get 'about', to: 'pages#about'
  get 'plomberie', to: 'pages#plomberie'
  get 'chauffage', to: 'pages#chauffage'
  get 'climatisation', to: 'pages#climatisation'
  get 'contact', to: 'pages#contact'
  get 'confirmation', to: 'pages#confirmation'
  post 'send_contact', to: 'pages#send_contact'

  scope '/actualites' do
    resources :posts, path: ''
  end
end
