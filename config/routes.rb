Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'session#index'

  resources :session do
    collection do
      post 'login', to: "session#login"
      get 'dashboard', to: "session#dashboard"
    end
  end

end

