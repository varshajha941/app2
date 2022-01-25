Rails.application.routes.draw do
  root 'students#show'
  get 'students/:id', to:'students#about'
  resources:students ,only: [:index]
end
