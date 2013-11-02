Goondog::Application.routes.draw do
  resources :groups do
  	member do
  		get :leave
      get :join
      get :remove_user
  	end
  end

  resources :user_profiles

  resources :posts

  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end