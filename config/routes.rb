Rails.application.routes.draw do
  
  get 'profile/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :users, only: [:create]

post '/login', to: "sessions#authenticate" 

patch '/profile/edit', to: "profiles#edit"

end
