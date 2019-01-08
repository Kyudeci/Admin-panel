Rails.application.routes.draw do
  # get 'pages/home'
  root to: "pages#home"
  get 'pages/contact'
  get 'pages/about'
  post '/pages/home' => 'pages#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
