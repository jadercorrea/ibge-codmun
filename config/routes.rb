Rails.application.routes.draw do
  resources :codes, only: [:show, :index]
end
