Rails.application.routes.draw do
  resources :comments
  resources :users
  root 'pages#home'
  resources :articles
  get '/pages/about',to:'pages#about'
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
  get 'login',to: 'sessions#new'
  post 'login' ,to: 'sessions#create'
  delete 'logout',to:'sessions#destroy'
  

end
