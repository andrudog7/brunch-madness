Rails.application.routes.draw do
  resources :items, only: [:index]
  resources :customers, only: [:index]
  get '/high_scores', to: 'scores#high_scores'
  resources :users, only: [:create, :show] do 
    resources :scores, only: [:index, :create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
