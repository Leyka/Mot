Rails.application.routes.draw do
  devise_for :users
  
  authenticated :user do 
    root 'notes#index', as: "authenticated_root"
  end 

  root 'welcome#index'

  
  resources :notes
end
