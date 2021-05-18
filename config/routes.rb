Rails.application.routes.draw do
  get '/', to: "events#index"
  get '/profile/:id', to: "users#show"
  devise_for :users
  resources :attendances
  resources :events
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
