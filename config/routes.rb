Rails.application.routes.draw do
  get 'codes/', to: 'codes#index'
  get '/code/:nome_municipio', to: 'codes#show'
  get '/codes/:nome_municipio', to: 'codes#index'
end
