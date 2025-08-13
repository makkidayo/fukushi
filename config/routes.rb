Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'tweets/top' => 'tweets#top'
  get 'tweets/search' => 'tweets#search'
  root 'tweets#index'
  devise_for:users
  resources :tweets do
    resources :comments, only: [:create]
  end

end