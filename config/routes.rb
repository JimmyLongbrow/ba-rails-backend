Rails.application.routes.draw do
  #INDEX
  get '/airplanes' => 'airplanes#index'

  get '/airplanes/new' => 'airplanes#new'
  #CREATE
  post '/airplanes' => 'airplanes#create'
  #INDEX
  get '/flights' => 'flights#index'

  get '/flights/new' => 'flights#new'
  #CREATE
  post '/flights' => 'flights#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
