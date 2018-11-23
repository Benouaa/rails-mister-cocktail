Rails.application.routes.draw do
  # get 'ingredients/index'
  # get 'ingredients/new'
  # get 'ingredients/show'
  # get 'ingredients/create'
  # get 'ingredients/edit'
  # get 'ingredients/update'
  # get 'ingredients/destroy'
  # get 'doses/index'
  # get 'doses/new'
  # get 'doses/show'
  # get 'doses/create'
  # get 'doses/edit'
  # get 'doses/update'
  # get 'doses/destroy'
  # get 'cocktails/index'
  # get 'cocktails/new'
  # get 'cocktails/show'
  # get 'cocktails/create'
  # get 'cocktails/edit'
  # get 'cocktails/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:index, :show, :new, :create] do
    # member do
    # end
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:destroy]
  root to: 'cocktails#index'
end
