Rails.application.routes.draw do
  resources :departments
  resources :branches
   root 'students#home'

  resources:students 
end
