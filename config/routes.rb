Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'pages#about'
  
   get 'emails/new', to:'emails#new'
   get 'emails', to:'emails#new'
   
  get 'projects', to:'pages#projects'
 
  get 'contact', to:'pages#contact'

   get 'thankyou', to:'pages#thankyou'
 resources :emails
end
