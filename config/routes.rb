Rails.application.routes.draw do
  root 'pages#home'
  resources :articles
  get '/pages/about',to:'pages#about'
  

end
