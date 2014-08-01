Rails.application.routes.draw do
  root to: "cruds#index"
  resources :cruds
end
