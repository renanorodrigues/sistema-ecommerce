Rails.application.routes.draw do
  resources :session, only: [:new, :create]
  get 'exit', to: 'session#logout', as: :logout

  namespace :loja do
    root :to => 'home#index', as: :loja
    resources :usuarios
    resources :vendas
  end

  resources :categorias
  resources :produtos

  get 'painel', to: 'painel#index', as: :painel
end
