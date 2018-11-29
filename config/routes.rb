Rails.application.routes.draw do


  resources :quotations
  resources :users

  root to: 'quotations#index'

  post "/quotations/:id/like" => "quotations#like", as: 'like'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  #user login
get "/login" => "session#new"  #login form
post "/login" => "session#create" #form submit here to perform login and set session
delete "/login" => "session#destroy"  #logout(delete session)

end
