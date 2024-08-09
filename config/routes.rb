Rails.application.routes.draw do
  devise_for :users
  devise_for :admins

  resources :users, only: [] do
    member do
      post 'request_loan'
      post 'confirm_loan'
      post 'repay_loan'
    end
  end

  resources :admins, only: [] do
    member do
      post 'approve_loan'
      post 'reject_loan'
    end
  end

  root 'users#show'
end

