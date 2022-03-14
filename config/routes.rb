Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    authenticated  do
      root to: 'groups#index'
   end

  unauthenticated do
      root to: 'homes#index', as: 'unauthenticated_root'
  end
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :home, only: [:index]
  resources :groups, only: [:index, :new, :create] do
    resources :entities, only: [:index, :new, :create]
  end

end
