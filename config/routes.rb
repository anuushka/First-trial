Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'session#index'

  resources :session do
    collection do
      #get 'edit/:user_id', to: "session#edit"
      get 'signup', to: "session#new"
      get 'login', to: "session#index"
      post 'login', to: "session#login"
      get 'dashboard', to: "session#dashboard"
      get 'logout', to: "session#logout"
      post 'social/login', to: "session#social_login"

      
    end
  end

end

