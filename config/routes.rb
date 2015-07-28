Rails.application.routes.draw do
  comfy_route :cms_admin, :path => '/admin'

  # Make sure this routeset is defined last

  get 'welcome/index'

  root to: 'welcome#index'

  resources :cities do
    resources :campaigns
    resources :tasks
  end

   comfy_route :cms, :path => '/', :sitemap => false
   
end
