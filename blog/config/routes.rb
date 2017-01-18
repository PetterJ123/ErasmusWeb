Rails.application.routes.draw do
  get 'landing/index'

    root 'landing#index'
  resources :posts
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
    
    

    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
