Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'home#index'
   get 'emails/new'
  get 'projects', to:'pages#projects'
  get 'about', to:'pages#about'
  get 'contact', to:'pages#contact'

   get 'thankyou', to:'pages#thankyou'
 resources :emails
end
