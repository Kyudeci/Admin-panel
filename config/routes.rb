Rails.application.routes.draw do
  get 'pages/database'
  # get 'pages/home'
  root to: "pages#home"
  get 'pages/courses'
  get 'pages/main'
  post '/pages/home' => 'pages#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
