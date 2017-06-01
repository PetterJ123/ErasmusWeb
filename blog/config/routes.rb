Rails.application.routes.draw do
  get 'users/new'

  get 'users/edit'

  get 'users/destroy'

  get 'users/show'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
    get 'menu/index'
    root 'menu#index'

    get 'menu/countries'

    get 'menu/about'

    get 'menu/profile'

    devise_for :users
    resources :posts, :users
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    get 'posts/index'

  resources :posts do
    resources :comments
  end
end
