Rails.application.routes.draw do
  get 'welcome/home'
  get 'welcome/index'
  
  root to: "welcome#home"
end
