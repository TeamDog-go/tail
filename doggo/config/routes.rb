Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :questions
  resources :answers
  resources :users
  resources :sessions
  resources :results
  resources :surveys
  resources :feedbacks
end
