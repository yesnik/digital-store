Rails.application.routes.draw do
  # For details on the DSL available within this file,
  # see http://guides.rubyonrails.org/routing.html
  root 'items#index'

  resources :items do
    member do
      get 'downvote'
      get 'upvote'
    end

    get 'expensive', on: :collection
  end

  get 'admin/users_count': 'admin#users_count'

  get ':controller(/:action(/:id))'
end
