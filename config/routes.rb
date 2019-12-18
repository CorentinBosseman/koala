Rails.application.routes.draw do
  devise_for :users, controllers: {registrations:'users/registrations'}

  root to: 'pages#home'

  resources :users, only: [:index]

  resource :profile, only: [:show, :update]

  resources :friendships, only: [:index, :new, :create] do
    member do
      patch :accept
      patch :decline
    end
  end

  resource :dashboard, only: :show

  # PROGRAMS

  resources :programs, only: [:index, :show] do
    resources :tasks,         only: [:show]
    resources :user_programs, only: [:create]
  end

  resources :user_tasks, only: [] do
    member do
      patch :done
    end
  end

  # CHALLENGES

  resources :challenges, only: [:index, :show, :new, :create] do
    resources :user_challenges, only: [:create]
  end
  resources :user_challenges, only: [] do
    resource :challengers_invitation, only: [:new, :create]
  end

  resources :challengers, only: [] do
    member do
      patch :accept
      patch :decline
      patch :abort
    end
  end
end
