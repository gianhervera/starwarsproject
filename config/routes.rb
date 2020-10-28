Rails.application.routes.draw do
  resources :planets, only: [:index, :show] do
    collection do
      get "search"
    end
  end
  resources :characters, only:[:index, :show]
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
