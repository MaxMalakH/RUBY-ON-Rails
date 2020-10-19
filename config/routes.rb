Rails.application.routes.draw do
  get 'static_pages/hello'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'phrases#index'
  post '/phrases' => 'phrases#create'
  get '/phrases/new' => 'phrases#new'
  resources :phrases
end
