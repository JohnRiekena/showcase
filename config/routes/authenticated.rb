namespace :example do
  resources :home do
    collection do
      get :people
      # get :homeworld
    end
  end
  resources :homeworld
end
resources :books
root to: 'authenticated#index', as: :authenticated_root