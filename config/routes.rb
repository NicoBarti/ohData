Rails.application.routes.draw do
  get 'bienvenida/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users do
    resources :items
  end

  root 'bienvenida#index'
end
