Rails.application.routes.draw do
  resources :comments
  resources :users
  root 'pages#home'
  resources :articles
  get '/pages/about',to:'pages#about'
  

end
