Rails.application.routes.draw do
  get 'pages/index'

  resources :workers do
    post "add_project", to: "allocations#add_project"
  end
  
  resources :projects do
    post "add_worker", to: "allocations#add_worker"
  end

  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
