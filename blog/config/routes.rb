Rails.application.routes.draw do
  #mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
    get 'menu/index'
    root 'menu#index'

    get 'menu/countries'

    get 'menu/about'

    devise_for :users
    resources :posts
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    get 'posts/index'

end
