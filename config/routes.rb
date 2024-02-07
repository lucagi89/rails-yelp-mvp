Rails.application.routes.draw do

  get "up" => "rails/health#show", as: :rails_health_check
  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end

  resources :reviews, only: [:destroy]
end
