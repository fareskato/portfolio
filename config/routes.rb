Rails.application.routes.draw do
  # Root route (Home page)
  root to: 'pages#home'

  # Portfolio routes
  # customize resource specific route
  resources :portfolios , except: [:show]
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  # get 'portfolio/:id/edit', to: 'portfolios#edit', as: 'portfolio_edit'



  # Blogs routes
  resources :blogs

  # static pages routes
  # get 'about', to: 'pages#about'
  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'



end
