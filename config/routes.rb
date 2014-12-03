Rails.application.routes.draw do
  resources :players

  root to: "raffler#index"
end
