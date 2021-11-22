Rails.application.routes.draw do
  namespace :usuario_backoffice do
    resources :categoria
    resources :produtos
    resources :usuarios
  end
end
