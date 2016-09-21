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

  get ':controller(/:action(/:id))'
end
