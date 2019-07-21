Rails.application.routes.draw do
  namespace 'api' do
    resources :expenses, only: %i[index show update destroy]
  end
end
