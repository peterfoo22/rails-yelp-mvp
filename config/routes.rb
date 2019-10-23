Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    resources :restaurants, only: [:index, :show, :create, :new] do
      resources :reviews, only: [:new, :create, :index]
    end

  namespace :admin do
    resources :restaurants, only: [:index]
  end

end
