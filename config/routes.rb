Rails.application.routes.draw do
  get 'pages/cohorts'
  resources :passwords, controller: "clearance/passwords", only: [:create, :new]
  resource :session, controller: "clearance/sessions", only: [:create]

  resources :users, controller: "users", only: [:create] do
    resource :password,
      controller: "clearance/passwords",
      only: [:create, :edit, :update]
  end

  get "/sign_in" => "clearance/sessions#new", as: "sign_in"
  delete "/sign_out" => "clearance/sessions#destroy", as: "sign_out"
  get "/sign_up" => "clearance/users#new", as: "sign_up"
  root to: "pages#home"
  get '/database' => 'pages#database'
  get '/courses'=> 'pages#courses'
  get '/main' => 'pages#main'
  get '/cohorts' => 'pages#cohorts'
  post '/pages/home' => 'pages#create'
  post '/courses' => 'pages#create'
  post '/database' => 'pages#create'
  post '/cohorts' => 'pages#create'
  get '/cohorts/:id' => "pages#cohorts"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
