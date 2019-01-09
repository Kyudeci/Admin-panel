Rails.application.routes.draw do
  root to: "pages#home"
  get '/database' => 'pages#database'
  get '/courses'=> 'pages#courses'
  get '/main' => 'pages#main'
  post '/pages/home' => 'pages#create'
  resources :passwords, controller: "clearance/passwords", only: [:create, :new]
  resource :session, controller: "clearance/sessions", only: [:create]

  resources :users, controller: "users", only: [:create] do
    resource :password,
      controller: "clearance/passwords",
      only: [:create, :edit, :update]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
