Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "cocktails#index"
  resources :cocktails, only: [:new, :create, :index, :show] do
    resources :doses, only: [:new, :create, :destroy], shallow: true
  end
  # resources :doses, only: [:destroy] => needs to be unnested
  # or "shallow" as specified above
end
