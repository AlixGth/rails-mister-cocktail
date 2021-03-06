Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :cocktails, only: [:index, :new, :create, :show] do
    resources :doses, only: [:index, :new, :create]
  end
  resources :doses, only: [:show, :destroy, :edit, :update]
end
