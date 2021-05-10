Rails.application.routes.draw do
  resources :realestates
  root "realestates#index"

end
