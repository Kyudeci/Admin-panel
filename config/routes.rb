Rails.application.routes.draw do
  get '/database' => 'pages#database'
  # get 'pages/home'
  root to: "pages#home"
  get '/courses'=> 'pages#courses'
  get '/main' => 'pages#main'
  post '/pages/home' => 'pages#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
