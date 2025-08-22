Rails.application.routes.draw do
  get "home/index"
  root "home#index"  # Página inicial será o menu

  resources :pessoas
  resources :livros
  resources :emprestimos
end
