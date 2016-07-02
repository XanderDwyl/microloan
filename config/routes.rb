Rails.application.routes.draw do
  get 'sample/new'

  get 'sample/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'

  resources :account, only: ['index', 'create', 'new']
end
