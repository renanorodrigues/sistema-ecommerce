Rails.application.routes.draw do
  namespace :usuario_backoffice do
    resources :usuarios
  end

  resources :categorias
  resources :produtos
end
