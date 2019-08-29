Rails.application.routes.draw do
  resources :hotels
  resources :checkins
  get 'welcome/home'
  get 'welcome/index'
  
  get '/checkin/:subdomain', to: 'hotels#qr'
  
  root to: "welcome#home"
end
