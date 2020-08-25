Rails.application.routes.draw do
  #INDEX
  get '/airplanes' => 'airplanes#index'
  #CREATE
  post '/airplanes' => 'airplanes#create'
  #INDEX
  get '/flights' => 'flights#index'
  #CREATE
  post '/flights' => 'flights#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
