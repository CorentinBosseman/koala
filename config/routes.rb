Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  resource :profile, only: :show

  resources :friendships, only: [:index, :new, :create] do
    member do
      patch :accept
      patch :decline
    end
  end

  resource :dashboard, only: :show

  # PROGRAMS

  resources :programs, only: [:index, :show] do
    resources :tasks,         only: [:show] do
    resources :user_programs, only: [:create]
  end

  resources :user_tasks, only: [] do
    member do
      patch :done
    end
  end

  # CHALLENGES

  resources :challenges, only: [:index, :show] do
    resources :user_challenges, only: [:create]
  end

  resources :challengers, only: [] do
    member do
      patch :accept
      patch :decline
      patch :abort
    end
  end
end
