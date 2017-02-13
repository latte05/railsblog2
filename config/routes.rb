Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#home'
  get 'about', to: 'pages#about'
  resources :articles
  get 'signup', to: 'users#new'
  resources :users, except: [:new]


  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destory'

  resources :categories, except: [:destroy]
#root 'welcome#home'
#get 'welcome/home', to: 'welcome#home'
#get 'about', to: 'welcome#about'
#get 'pages/home', to: 'pages#home'
#get 'pages/about', to: 'pages#about'

end
