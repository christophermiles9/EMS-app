Rails.application.routes.draw do
  root 'students#index'

  devise_for :instructors
  resources :students
end
