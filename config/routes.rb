Rails.application.routes.draw do
  get 'site/index'
get 'sign_up' => 'users#new', as: 'sign_up'
resources :users
root to: 'site#index'
end
