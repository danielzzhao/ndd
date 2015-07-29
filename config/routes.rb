Rails.application.routes.draw do
  comfy_route :cms_admin, :path => '/admin'

  root to: 'welcome#index'
  get 'cities/ambassador'
  get 'welcome/index'
  

  resources :cities do
    resources :campaigns
    resources :tasks
    resources :employees 
  end


  comfy_route :cms_admin, :path => '/admin'

  # Make sure this routeset is defined last

  comfy_route :cms, :path => '/', :sitemap => false
   
end
