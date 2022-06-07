Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: "users/registrations" }
  root to: 'pages#home'

  resources :quests, only: [:index, :show] do
    resources :user_quests, only: [:create, :update]
    member do
      patch :validate
      patch :pending
    end
  end

  resources :guild_choices, only: [:create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
