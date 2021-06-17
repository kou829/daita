Rails.application.routes.draw do
  devise_for :users
  get 'agendaes/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "agendaes#index"

  resources :agendaes, only: [:new, :create]
end
 