Rails.application.routes.draw do
  devise_for :users
  resources :coaches
  

  resources :exercises 

 
 
  root 'exercises#index'
  get "bootstrap", to: "exercises#bootstrap"
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
