Rails.application.routes.draw do
  get 'emails/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'home#index'
  
  get 'projects', to:'pages#projects'
  get 'about', to:'pages#about'
  get 'contact', to:'pages#contact'
  get 'services', to:'pages#services'
  get 'thankyou', to:'pages#thankyou'
  resources :emails
end
