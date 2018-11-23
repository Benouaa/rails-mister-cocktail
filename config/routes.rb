Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:index, :show, :new, :edit, :update, :create, :destroy] do
    # member do
    # end
    resources :doses, only: [:new, :create, :edit, :update]
  end
  resources :doses, only: [:destroy]
  root to: 'cocktails#index'
end
