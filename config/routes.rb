Rails.application.routes.draw do
  devise_for :users
  resources :tasks do
    member do
      patch :complete
      get :toggle_status
    end
  end
  root 'tasks#index'
end
