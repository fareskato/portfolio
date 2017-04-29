Rails.application.routes.draw do
  
  ####################################################
  ############### APPLICATION ROUTES #################
  ####################################################
  # Root route (Home page)
  root to: 'pages#home'

   # Blogs routes
  resources :blogs do 
    member do 
       get :toggle_status 
    end
  end

  # static pages routes
  # get 'about', to: 'pages#about'
  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  # Portfolio routes
  # customize resource specific route
  resources :portfolios , except: [:show]
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  # get 'portfolio/:id/edit', to: 'portfolios#edit', as: 'portfolio_edit'



 





end
