Rails.application.routes.draw do
  resources :way_pays
  resources :categories
  resources :release_countries
  resources :sizes
  resources :seasons
  resources :colors
  resources :footwears
  resources :trademarks
  resources :providers
  get 'welcome/index'
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
