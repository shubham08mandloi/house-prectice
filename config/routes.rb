Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "members#index"
   resources :members
   resources :house_as
   resources :rooms
end
