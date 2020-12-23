Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
resources :teachers
resources :sections
resources :students
resources :assignments
resources :grades

post '/auth', to: 'auth#create'
get '/current_user', to: 'auth#show'

end
