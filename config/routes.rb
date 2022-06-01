Rails.application.routes.draw do

  get 'user_quests/create'
  get 'user_quests/update'
  get 'guild_choices/create'
  get 'users/update'
  devise_for :users
  root to: 'pages#home'
  # resources :guild, only: :index do
  #   resources :guild_choices, only: :show
  # end

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
