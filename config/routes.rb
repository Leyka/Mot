Rails.application.routes.draw do
  root 'welcome#index'

  devise_for :users
  resources :notes
end
