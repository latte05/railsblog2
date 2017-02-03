Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#home'
  get 'about', to: 'pages#about'
  resources :articles

#root 'welcome#home'
#get 'welcome/home', to: 'welcome#home'
#get 'about', to: 'welcome#about'
#get 'pages/home', to: 'pages#home'
#get 'pages/about', to: 'pages#about'

end
