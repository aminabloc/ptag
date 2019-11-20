Rails.application.routes.draw do
  
  resources :campaigns
  resources :videos
  get 'welcome/home'
  get 'welcome/index'
  

  root to: "welcome#home"
  
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks"}
end
