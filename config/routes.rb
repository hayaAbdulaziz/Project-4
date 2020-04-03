Rails.application.routes.draw do
  root 'exercises#index'
  resources :exercises

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
