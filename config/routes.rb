Rails.application.routes.draw do
  namespace :users do
    get 'dash_boards', to: 'dash_boards#index'
  end
  devise_scope :user do
    root :to => "devise/sessions#new"
  end

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
