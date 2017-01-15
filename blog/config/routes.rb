Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
    get 'static_displ/landing'
    root 'static_displ#landing'

    get 'static_displ/about'
    
    get 'static_displ/projects'
    
    get 'static_displ/countries'
    
    get 'static_displ/blog'

    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
