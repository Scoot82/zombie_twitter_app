ZombieTwitterApp::Application.routes.draw do
  root to: 'tweets#index'
  resources :users
  resources :tweets
end
