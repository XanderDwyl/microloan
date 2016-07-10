Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'

  get 'login' => "auth#login"
  get 'logout' => "auth#logout"
  post 'login' => "auth#create"

  resources :account, only: ['index', 'create']
  get 'register' => "account#new"
  get 'account/new' => redirect('/register')


  get '*anything' => 'error#not_found'
end
