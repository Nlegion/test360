Rails.application.routes.draw do
  root 'tests#index' 
  resources :tests do
    resources :questions, except: [:index, :show]
    resources :answers, only: [:index]
  end
end
