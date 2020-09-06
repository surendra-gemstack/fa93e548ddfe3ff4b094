Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  resources :answers
  resources :questions
  post 'follow_user', to: 'users#follow'
  resources :topics
  post 'follow_topic', to: 'topics#follow'
  resources :users

  root to: 'questions#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
