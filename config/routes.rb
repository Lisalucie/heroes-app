Rails.application.routes.draw do
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
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
