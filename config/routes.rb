Rails.application.routes.draw do
  resources :colors
  resources :footwears
  resources :categories
  resources :trademarks
  resources :providers
  get 'welcome/index'
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
