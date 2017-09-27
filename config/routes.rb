Rails.application.routes.draw do
  resource :session, only: :create
  resources :cats, defaults: { format: :json }
end
