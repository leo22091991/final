Rails.application.routes.draw do
  resources :sale_lines
  resources :sales
  resources :purchase_lines
  resources :purchases
  resources :products
  resources :categories
  get 'welcome/index'
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
