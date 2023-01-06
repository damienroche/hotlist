Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "lists#new"
  resources :lists do
    post :update_current_participant
    resources :items do
      resources :participants, only: %i[create destroy], controller: "bringers"
    end
    resources :participants
  end
end
