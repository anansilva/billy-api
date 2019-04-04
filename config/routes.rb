Rails.application.routes.draw do
  resources :expenses, only: %i[index show update destroy]
end
