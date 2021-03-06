Rails.application.routes.draw do
  devise_for :users
  root to: 'home#top'
  get "home/about" => "home#about"
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only:[:show, :index, :edit, :update]
end
