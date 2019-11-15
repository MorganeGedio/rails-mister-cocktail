Rails.application.routes.draw do
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :create]
  end
  # method needs to look only at the dose
  resources :doses, only: [:destroy]
end
