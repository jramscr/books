Rails.application.routes.draw do
  resources :books do
    collection do
      get 'change_layout'
    end
  end

  resources :authors
  resources :publisher_houses
  root 'books#index'
end

