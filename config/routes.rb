Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for :users
  root "messages#index"
  resources :users, only: [:edit, :update]
<<<<<<< Updated upstream
end
=======
  resources :groups, only: [:new, :create, :edit, :update] do
    resources :messages, only: [:index, :create]
  end
end
>>>>>>> Stashed changes
