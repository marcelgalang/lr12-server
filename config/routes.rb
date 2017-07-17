Rails.application.routes.draw do
  resources :two_diapers
  resources :one_diapers
  resources :right_bs
  resources :left_bs
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
