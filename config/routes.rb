Rails.application.routes.draw do
   get 'students/new', to:'students#new'
  #  post 'students/about', to:'students#about'
  resources:students 
  get 'signup', to:'departments#new'
  resources:departments ,except: [:new]
end
