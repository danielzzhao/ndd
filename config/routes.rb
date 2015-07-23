Rails.application.routes.draw do
  get 'welcome/index'

  root to: 'welcome#index'

  resources :cities do
    resources :campaigns
    resources :tasks
  end
end
