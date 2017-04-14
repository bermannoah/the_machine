Rails.application.routes.draw do
  resources :admins
  namespace :api do
    namespace :v1 do
      post '/numbers', to: 'numbers#index'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
