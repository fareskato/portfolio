Rails.application.routes.draw do
  # Root route (Home page)
  root :to => 'pages#home'

  # Portfolio routes
  resources :portfolios

  # Blogs routes
  resources :blogs

  # static pages routes
  # get 'about', :to => 'pages#about'
  get 'about-me', :to => 'pages#about'
  get 'contact', :to => 'pages#contact'



end
